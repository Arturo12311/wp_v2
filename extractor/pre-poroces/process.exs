defmodule TextSegmenter do
  def segment_and_extract(text) do

    #cuts out unnecessary data before: \"Members\"
    after_members =
      case String.split(text, ~s'\\"Members\\" : {', parts: 2) do
        [_, after_members] ->
          after_members

        _ ->
          text
      end

    chunk_text(after_members, []) #returns a list of chunks. each chunk is a map with %{first_param, string_constant, length, following_code}
  end

  defp chunk_text(text, acc) do
    case extract_next_chunk(text) do
      {nil, _} ->
        Enum.reverse(acc)

      {chunk, rest} ->
        chunk_text(rest, [chunk | acc])
    end
  end

  defp extract_next_chunk(text) do
    func_call = "std::__ndk1::__put_character_sequence<char,std::__ndk1::char_traits<char>>"

    case :binary.match(text, func_call) do
      :nomatch ->
        {nil, text}

      {start, _} ->
        {_, post} = String.split_at(text, start)

        case extract_to_semicolon(post) do
          nil ->
            {nil, text}

          {extracted, remaining} ->
            case parse_extracted(extracted) do
              nil ->
                extract_next_chunk(remaining)

              chunk ->
                following_code = extract_following_code(remaining) # index in text where next chunk begins

                {%{chunk | following_code: following_code},
                 String.slice(remaining, String.length(following_code)..-1)}
            end
        end
    end
  end

  defp extract_to_semicolon(text) do
    case :binary.match(text, ";") do
      :nomatch ->
        nil

      {index, _} ->
        extracted = String.slice(text, 0..index)
        remaining = String.slice(text, (index + 1)..-1)
        {extracted, remaining}
    end
  end

  defp parse_extracted(text) do
    case Regex.run(~r/\((.*)\)/, text) do
      [_, content] ->
        params = split_params(content)

        case params do
          [first_param, string_constant, length | _] ->
            case validate_length(length) do
              {:ok, validated_length} -> # return the data if chunk is valid
                %{
                  first_param: String.trim(first_param),
                  string_constant: extract_string(string_constant),
                  length: validated_length,
                  following_code: ""
                }

              :error ->
                nil
            end

          _ ->
            nil
        end

      _ ->
        nil
    end
  end

  defp extract_following_code(text) do
    func_call = "std::__ndk1::__put_character_sequence<char,std::__ndk1::char_traits<char>>"

    case :binary.match(text, func_call) do
      :nomatch -> String.trim(text)
      {index, _} -> String.trim(String.slice(text, 0, index))
    end
  end

  defp split_params(content) do
    content
    |> String.replace(~r/"\s*,\s*"/, "__TEMP_COMMA__")
    |> String.split(",")
    |> Enum.map(&String.replace(&1, "__TEMP_COMMA__", ","))
  end

  defp extract_string(param) do
    case Regex.run(~r/"(.*)"/, String.trim(param)) do
      [_, string] -> string
      _ -> param
    end
  end

  defp validate_length(length_str) do
    trimmed = String.trim(length_str)

    cond do
      Regex.match?(~r/^0x[0-9A-Fa-f]+$/, trimmed) ->
        hex_value = String.slice(trimmed, 2..-1)

        case Integer.parse(hex_value, 16) do
          {value, ""} when value > 2 -> {:ok, trimmed}
          _ -> :error
        end

      Regex.match?(~r/^\d+$/, trimmed) ->
        case Integer.parse(trimmed) do
          {value, ""} when value > 2 -> {:ok, trimmed}
          _ -> :error
        end

      true ->
        :error
    end
  end
end

defmodule ChunkClassifier do
  def classify(chunk) do
    cond do
      type = extract_serializer_type(chunk) ->
        type
      !!(class_name = extract_structure_info(chunk)) ->
        {:struct, class_name}
      type = extract_enum_type(chunk) ->
        type
      type = extract_boolean_type(chunk) ->
        type
      type = extract_list_type(chunk) ->
        type
      type = extract_map_type(chunk) ->
        type
      type = extract_message_type(chunk) ->
        type
      info = extract_if_else_info(chunk) ->
        case classify(info) do
          :unknown -> {:nullable, info}
          classified -> {:nullable, classified}
        end
      true ->
        :unknown
    end
  end

  defp extract_serializer_type(chunk) do
    case Regex.run(
           ~r/^\s*TozSerializableMessageLibNative::JsonSerializer<(.*?),void>::Serialize/,
           chunk
         ) do
      [_, "unsigned_char"] -> {:int, 2}
      [_, "signed_char"] -> {:int, 2}
      [_, "unsigned_short"] -> {:int, 2}
      [_, "short"] -> {:int, 2}
      [_, "int"] -> {:int, 4}
      [_, "long"] -> {:int, 4}
      [_, "long_long"] -> {:uint, 8}
      [_, "unsigned_int"] -> {:uint, 4}
      [_, "float"] -> :float
      [_, "FString"] -> :FString
      [_, "FVector"] -> :FVector
      [_, "FDateTime"] -> :FDateTime
      [_, "FTimespan"] -> :FTimespan
      [_, "FRotator"] -> :FRotator
      [_, "FIntVector2D"] -> :FIntVector2D
      [_, "FGuid"] -> :FGuid
      [_, type] -> parse_complex_type(type)
      _ -> nil
    end
  end

  defp extract_structure_info(chunk) do
    cond do
      Regex.match?(~r/^(\w+)::ToJsonString\(\);/, chunk) ->
        [_, class_name] = Regex.run(~r/^(\w+)::ToJsonString\(\);/, chunk)
        class_name
      true ->
        nil
    end
  end

  defp extract_enum_type(chunk) do
    case Regex.run(~r/StaticEnum<([^>]+)>/, chunk) do
      [_, enum_type] -> {:enum, enum_type}
      nil -> nil
    end
  end

  defp extract_boolean_type(chunk) do
    pattern = ~r/if\s*\([^)]+\)\s*
               .*?=\s*"true"\s*
               .*?else\s*
               .*?=\s*"false"/xs

    if Regex.match?(pattern, chunk) do
      :bool
    else
      nil
    end
  end

  defp parse_complex_type(type) do
    cond do
      String.contains?(type, "TMap<") -> extract_map_type(type)
      String.contains?(type, "TArray<") -> extract_list_type(type)
      String.contains?(type, "TSharedPtr<") -> parse_shared_ptr(type)
      true -> {:struct, remove_prefix(type)}
    end
  end

  defp parse_shared_ptr(type) do
    case Regex.run(~r/TSharedPtr<([^,>]+)/, type) do
      [_, inner_type] -> {:struct, remove_prefix(inner_type)}
      _ -> {:struct, remove_prefix(type)}
    end
  end

  defp clean_and_classify_type(type) do
    cleaned_type = type
      |> String.split(",")
      |> List.first()
      |> String.trim()

    cond do
      cleaned_type == "char" -> :char
      cleaned_type == "long_long" -> {:uint, 8}
      cleaned_type == "long" -> {:int, 4}
      cleaned_type == "short" -> {:int, 2}
      cleaned_type == "int" -> {:int, 4}
      cleaned_type == "float" -> :float
      cleaned_type == "FString" -> :string
      cleaned_type == "FVector" -> :vector
      cleaned_type == "FDateTime" -> :datetime
      cleaned_type == "FTzCuid" -> :cuid
      cleaned_type == "bool" -> :bool
      String.starts_with?(cleaned_type, "E") -> {:enum, remove_prefix(cleaned_type)}
      true -> {:struct, remove_prefix(cleaned_type)}
    end
  end

  defp classify_inner_type(type) do
    cond do
      String.contains?(type, "TArray<") ->
        extract_list_type(type)
      String.contains?(type, "TMap<") ->
        extract_map_type(type)
      String.contains?(type, "TSharedPtr<") ->
        parse_shared_ptr(type)
      String.contains?(type, "TSet<") ->
        extract_set_type(type)
      true ->
        clean_and_classify_type(type)
    end
  end

  defp extract_list_type(chunk) do
    case Regex.run(~r/TArray<(.+?)(?:,\s*[^>]+)?>/, chunk) do
      [_, inner_type] ->
        {:list, classify_inner_type(inner_type)}
      _ ->
        nil
    end
  end

  defp extract_map_type(chunk) do
    case Regex.run(~r/TMap<\s*(.+?)\s*,\s*(.+?)\s*>/, chunk) do
      [_, key_type, value_type] ->
        key = clean_and_classify_type(key_type)
        value = clean_and_classify_type(value_type)
        {:map, key, value}
      _ ->
        nil
    end
  end

  defp extract_set_type(type) do
    case Regex.run(~r/TSet<(.+?)>/, type) do
      [_, inner_type] ->
        {:set, classify_inner_type(inner_type)}
      _ ->
        {:set, :unknown}
    end
  end

  defp extract_message_type(chunk) do
    cond do
      Regex.match?(~r/if \(\*\(long \*\*\)\(.*?\) == \(long \*\)0x0\)/, chunk) and
      Regex.match?(~r/\(\*\*\(code \*\*\)\(\*\*\(long \*\*\).*? \+ 0x38\)\)/, chunk) ->
        {:nullable, :message}
      Regex.match?(~r/::to_string\(\(uint\)\*\(byte\*\)\(in_x0\+\d+\)\);/, chunk) ->
        {:nullable, :enum}
      true ->
        nil
    end
  end

  defp extract_if_else_info(chunk) do
    if_pattern = ~r/^\s*if\s*\([^=]*s*==\s*(?:0|'\\0')\)\s*{/
    else_pattern = ~r/\belse\s*{/

    with [first_line | _] <- String.split(chunk, "\n", parts: 2),
         true <- Regex.match?(if_pattern, first_line),
         [_, else_content] <- Regex.split(else_pattern, chunk, parts: 2) do
      else_content
      |> String.replace(["\r", "\n", " "], "")
      |> String.trim()
    else
      _ -> nil
    end
  end

  defp remove_prefix(name) do
    name
    |> String.replace_prefix("ETz", "")
    |> String.replace_prefix("FTz", "")
    |> String.replace_prefix("Tz", "")
  end
end


defmodule DataProcessorAndWriter do

  #programs main entry point
  def process_and_write(data) do
    processed_data = process_data(data)
    write_parsed_structures(processed_data.structures)
    write_unknown_fields(processed_data.unknown_fields)
  end

  defp process_data(data) do
    Enum.reduce(data, %{structures: %{}, unknown_fields: []}, fn entry, acc ->  #loops through each entry in data
      opcode_name = entry["opcode_name"]
      to_json_string = entry["ToJsonString"]

      #returns list of raw chunks
      extracted_data = TextSegmenter.segment_and_extract(to_json_string)

      fields = Enum.map(extracted_data, fn %{string_constant: str, following_code: code} ->  #formats each raw chunk
        name = extract_field_name(str)
        type = ChunkClassifier.classify(code) #calls classifier module
        %{name: name, type: type}
      end)
      |> filter_fields(opcode_name)

      # might add or delete this function ... not sure yet
      # # Handle empty structures
      # fields = if Enum.empty?(fields) do
      #   [%{name: nil, type: :empty_struct}]
      # else
      #   fields
      # end

      #handle base field
      {base_field, other_fields} = Enum.split_with(fields, fn %{name: name} ->
        name && String.downcase(to_string(name)) == "base"
      end)
      fields = case base_field do
        [base] -> [%{name: "__base__", type: base.type} | other_fields]
        _ -> fields
      end

      acc = put_in(acc, [:structures, opcode_name], fields) #update :structures accumulator map

      #handle unknown fields
      unknown_fields = Enum.filter(fields, fn %{type: type} -> type == :unknown end)
      |> Enum.map(fn %{name: name} ->
        %{opcode_name: opcode_name, field_name: name, code: find_code_for_field(extracted_data, name)}
      end)

      update_in(acc, [:unknown_fields], &(&1 ++ unknown_fields)) #update :unknown_fields accumulator list
    end)
  end

  defp filter_fields(fields, opcode_name) do
    Enum.reject(fields, fn %{name: name} ->  #filters out some fields
      name == "TypeName" || name == opcode_name
    end)
  end

  defp extract_field_name(str) do
    case Regex.run(~r/"(.+)\\"/, str) do  #extracts name using regex
      [_, name] -> name
      _ -> "unknown_name"
    end
  end

  defp find_code_for_field(extracted_data, field_name) do
    Enum.find_value(extracted_data, fn
      %{string_constant: str, following_code: code} ->
        if extract_field_name(str) == field_name, do: code, else: nil
    end)
  end

  defp write_parsed_structures(structures) do
    content = Enum.map_join(structures, ",\n\n", fn {opcode_name, fields} ->
      fields_str = Enum.map_join(fields, ",\n    ", fn %{name: name, type: type} ->
        "%{name: #{inspect(name)}, type: #{inspect(type)}}"
      end)
      "#{inspect(opcode_name)} => [\n    #{fields_str}\n  ]"
    end)
    File.write!("parsed_structures.exs", "%{\n  " <> content <> "\n}")
  end

  defp write_unknown_fields(unknown_fields) do
    content = Enum.map_join(unknown_fields, "\n\n", fn %{opcode_name: opcode_name, field_name: field_name, code: code} ->
      "Opcode: #{opcode_name}\nField: #{field_name}\nCode:\n#{code}"
    end)
    File.write!("unknown_fields.txt", content)
  end
end


#
# !!!Runs the program!!!
#

Mix.install([{:exjsx, "~> 4.0.0"}])

# Load the JSON data
data = JSX.decode!(File.read!("C:/repos/wp/assets/data/function_data_full.json"))

# Process the data and write results
DataProcessorAndWriter.process_and_write(data)

IO.puts("Processing complete. Check 'parsed_structures.exs' and 'unknown_fields.txt' for results.")
