Mix.install([{:exjsx, "~> 4.0.0"}])

# Load the JSON data
data = JSX.decode!(File.read!("C:/repos/wp/assets/data/function_data_full.json"))

# Load the structures map (if you still need this)
{par, _} = Code.eval_string(File.read!("C:/repos/wp/assets/maps/structures_map.exs"))
par = Map.new(par)

IO.puts("Total structures: #{Enum.count(par)}")

defmodule TextSegmenter do
  def segment_and_extract(text) do
    # [_, after_members] = String.split(text, ~s'\\"Members\\" : {', parts: 2)
    # after_members = "{" <> after_members  # Add the opening brace back

    after_members =
      case String.split(text, ~s'\\"Members\\" : {', parts: 2) do
        [_, after_members] ->
          after_members

        _ ->
          text
      end

    chunk_text(after_members, [])
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
        {pre, post} = String.split_at(text, start)

        case extract_to_semicolon(post) do
          nil ->
            {nil, text}

          {extracted, remaining} ->
            case parse_extracted(extracted) do
              nil ->
                extract_next_chunk(remaining)

              chunk ->
                following_code = extract_following_code(remaining)

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
              {:ok, validated_length} ->
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

defmodule CChunkClassifier do
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
      info = extract_if_else_info(chunk) ->
        case classify(info) do
          :unknown -> {:nullable, info}
          classified -> {:nullable, classified}
        end
      true ->
        :unknown
    end
  end

  defp extract_list_type(chunk) do
    case Regex.run(~r/TozSerializableMessageLibNative::JsonSerializer<(TArray<.*?>(?:,\s*TSizedDefaultAllocator<\d+>)*),void>::Serialize/, chunk) do
      [_, array_type] ->
        {:list, parse_array_type(array_type)}
      _ ->
        nil
    end
  end

  defp parse_array_type(array_type) do
    case Regex.run(~r/TArray<(.*)>/, array_type) do
      [_, inner_type] ->
        cleaned_type = String.replace(inner_type, ~r/,\s*TSizedDefaultAllocator<\d+>/, "")
        classify_inner_type(cleaned_type)
      _ ->
        :unknown
    end
  end

  defp classify_inner_type(type) do
    cond do
      String.contains?(type, "TSharedPtr") ->
        case Regex.run(~r/TSharedPtr<([^,]+)/, type) do
          [_, shared_type] -> {:shared_ptr, remove_ftz_prefix(shared_type)}
          _ -> :unknown
        end
      String.contains?(type, "TArray") ->
        {:list, parse_array_type(type)}
      type == "long_long" -> {:uint, 8}
      type == "long" -> {:uint, 4}
      type == "int" -> {:int, 4}
      type == "FString" -> :string
      type == "float" -> :float
      true -> :unknown
    end
  end

  defp extract_serializer_type(chunk) do
    case Regex.run(
           ~r/^\s*TozSerializableMessageLibNative::JsonSerializer<(.*?),void>::Serialize/,
           chunk
         ) do
      [_, "int"] -> {:int, 4}
      [_, "long"] -> {:uint, 4}
      [_, "long_long"] -> {:uint, 8}
      [_, "FString"] -> :string
      [_, "FVector"] -> :vector
      [_, "FDateTime"] -> :datetime
      [_, type] -> type
      _ -> nil
    end
  end

  defp extract_structure_info(chunk) do
    case Regex.run(~r/^(\w+)::ToJsonString\(\);/, chunk) do
      [_, class_name] ->
        remove_ftz_prefix(class_name)
      _ -> nil
    end
  end

  defp remove_ftz_prefix(class_name) do
    if String.starts_with?(class_name, "FTz") do
      String.slice(class_name, 3..-1)
    else
      class_name
    end
  end

  defp extract_enum_type(chunk) do
    cond do
      Regex.match?(~r/StaticEnum<([^>]+)>\(\)/, chunk) ->
        case Regex.run(~r/StaticEnum<([^>]+)>\(\)/, chunk) do
          [_, enum_type] -> {:enum, enum_type}
          _ -> nil
        end
      Regex.match?(~r/UEnum::GetNameStringByValue/, chunk) ->
        {:enum, "Unknown"}  # We know it's an enum, but can't determine the specific type
      true -> nil
    end
  end

  defp extract_boolean_type(chunk) do
    cond do
      # Case 1: Common pattern in the provided examples
      Regex.match?(~r/if \(\*\(char \*\)\(.*?\) == '\\0'\) \{/, chunk) and
      Regex.match?(~r/lVar1 = 5;/, chunk) and
      Regex.match?(~r/puVar2 = \(undefined8 \*\)pcVar10;/, chunk) ->
        :boolean

      # Case 2: Explicit "false" string assignment
      Regex.match?(~r/pcVar\d+ = "false"/, chunk) and
      Regex.match?(~r/if \(.*== '\\0'\)/, chunk) ->
        :boolean

      # Case 3: Comparison with '\0'
      Regex.match?(~r/\*\(char\*\)\([^)]*\) == '\\0'/, chunk) ->
        :boolean

      # Case 4: Comparison with 0 for a char pointer
      Regex.match?(~r/if \(\*\(char \*\)\(.*\) == 0\)/, chunk) ->
        :boolean

      # Case 5: Direct comparison of a memory location with '\0'
      Regex.match?(~r/if \(\*\([^)]+\) == '\\0'\)/, chunk) ->
        :boolean

      # Case 6: Assignment of 'true' or 'false' strings
      Regex.match?(~r/= "(true|false)";/, chunk) ->
        :boolean

      true -> nil
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
end

# # Segment the text and extract information
# extracted_data = TextSegmenter.segment_and_extract(input_text)

# # Output the results
# IO.puts("Extracted data:")

# fields = Enum.map(extracted_data, fn %{
#                                first_param: param,
#                                string_constant: str,
#                                length: len,
#                                following_code: code
#                              } ->
#   # IO.puts "Function call:"
#   # IO.puts "  First parameter: #{param}"
#   # IO.puts "  String constant: #{str}"
#   # IO.puts "  Length: #{len}"
#   name = case (Regex.run(~r/"(.+)\\"/, str) |> IO.inspect()) do
#    [_, n] -> n
#    _ -> str
#   end
#   IO.puts("Field: #{name}")
#   class = CChunkClassifier.classify(code)

#   if class == :unknown do
#     IO.puts("Following code:")
#     IO.puts("#{code}")
#   else
#     IO.puts("#{inspect(CChunkClassifier.classify(code))}")
#   end

#   IO.puts("---")
#   {name, class}
# end)

# fields = case :lists.reverse(fields) do
#   [{"Base", b} | rest] ->
#     [{"__base__", b} | :lists.reverse(rest)]
#   _ -> fields
# end

defmodule DataProcessorAndWriter do
  def process_and_write(data) do
    processed_data = process_data(data)
    write_parsed_structures(processed_data.structures)
    write_unknown_fields(processed_data.unknown_fields)
  end

  defp process_data(data) do
    Enum.reduce(data, %{structures: %{}, unknown_fields: []}, fn entry, acc ->
      opcode_name = entry["opcode_name"]
      to_json_string = entry["ToJsonString"]

      extracted_data = TextSegmenter.segment_and_extract(to_json_string)

      fields = Enum.map(extracted_data, fn %{string_constant: str, following_code: code} ->
        name = extract_field_name(str)
        type = classify_and_adjust_type(code)
        %{name: name, type: type}
      end)

      # Handle the base field
      {base_field, other_fields} = Enum.split_with(fields, fn %{name: name} ->
        name && String.downcase(to_string(name)) == "base"
      end)

      fields = case base_field do
        [base] -> [%{name: "__base__", type: base.type} | other_fields]
        _ -> fields
      end

      acc = put_in(acc, [:structures, opcode_name], fields)

      unknown_fields = Enum.filter(fields, fn %{type: type} -> type == :unknown end)
      |> Enum.map(fn %{name: name} ->
        %{opcode_name: opcode_name, field_name: name, code: find_code_for_field(extracted_data, name)}
      end)

      update_in(acc, [:unknown_fields], &(&1 ++ unknown_fields))
    end)
  end

  defp extract_field_name(str) do
    case Regex.run(~r/"(.+)\\"/, str) do
      [_, name] -> name
      _ -> nil
    end
  end

  defp classify_and_adjust_type(code) do
    case CChunkClassifier.classify(code) do
      {:struct, "Cuid"} -> :cuid
      :vector -> :vector
      "short" -> {:int, 2}  # Assuming short is a 16-bit integer
      other -> other
    end
  end

  defp find_code_for_field(extracted_data, field_name) do
    Enum.find_value(extracted_data, fn
      %{string_constant: str, following_code: code} ->
        if extract_field_name(str) == field_name, do: code, else: nil
    end)
  end

  defp write_parsed_structures(structures) do
    content = Enum.map_join(structures, ",\n\n", fn {struct_name, fields} ->
      fields_str = Enum.map_join(fields, ",\n    ", fn %{name: name, type: type} ->
        "%{name: #{inspect(name)}, type: #{inspect(type)}}"
      end)
      "#{inspect(struct_name)} => [\n    #{fields_str}\n  ]"
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

# Process the data and write results
DataProcessorAndWriter.process_and_write(data)

IO.puts("Processing complete. Check 'parsed_structures.exs' and 'unknown_fields.txt' for results.")
