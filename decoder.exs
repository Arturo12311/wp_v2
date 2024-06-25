# IMPORTANT
# some packetfields not yet defined.

defmodule PacketParser do
  @opcode_map File.read!("opcode_map.exs") |> Code.eval_string() |> elem(0)
  @structures File.read!(Path.join(__DIR__, "structures.exs")) |> Code.eval_string() |> elem(0)

  def parse_packet(binary) do
    {opcode, _hash, message} = extract_header(binary)
    # IO.puts("Packet Header:\n  Opcode: #{opcode}\n  Hash: #{hash}")

    name = find_name(opcode)
    # IO.puts("Found Packet Name: #{name}")

    if name do
      structure = find_structure(@structures, name)
      # IO.puts("Found Structure: #{inspect(structure)}")

      parsed_data = parse_structure(message, structure)
      IO.inspect(parsed_data, label: name)
    else
      IO.puts("No structure found for opcode #{opcode}")
    end
  end

  defp extract_header(<<0, opcode::little-32, 0, hash::little-32, message::binary>>) do
    {opcode, hash, message}
  end

  defp find_name(opcode) do
    Map.get(@opcode_map, Integer.to_string(opcode))
  end

  defp find_structure(structures, name) do
    {_, structure} = Enum.find(structures, fn {struct_name, _fields} ->
      struct_name == name
    end)
    structure
  end

  defp parse_structure(binary, structure) do
    Enum.reduce_while(structure, {binary, []}, fn field, {binary, acc} ->
      case parse_field(binary, field) do
        {:ok, {value, rest}} ->
          {:cont, {rest, acc ++ [{field.name, value}]}}
        {:error, reason} ->
          IO.puts("Failed to parse field #{inspect(field)}: #{reason}")
          {:halt, {binary, acc ++ [{field.name, nil}]}}
      end
    end)
    |> elem(1)
  end

  defp parse_field(<<int::little-32, rest::binary>>, %{name: _name, type: {:uint, 4}}) do
    {:ok, {int, rest}}
  end

  defp parse_field(<<0, strlen::little-32, str::binary-size(strlen), rest::binary>>, %{name: _name, type: {:string, :dynamic}}) do
    {:ok, {str, rest}}
  end

  defp parse_field(_binary, %{name: name, type: type}) do
    IO.puts("Unknown field type #{inspect(type)} for field #{name}")
    {:error, :unknown_field_type}
  end
end

packet = <<0, 208, 13, 160, 235, 0, 64, 134, 244, 147, 0, 32, 0, 0, 0, 91,
102, 101, 56, 48, 58, 58, 56, 51, 53, 58, 99, 51, 98, 100, 58, 55, 98,
55, 101, 58, 49, 50, 102, 100, 93, 58, 52, 57, 55, 52, 49, 2, 0, 0, 0,
103, 0, 0, 0, 2, 0, 0, 0, 0, 6, 0, 0, 0, 49, 52, 46, 55, 46, 49, 0, 10,
0, 0, 0, 105, 80, 104, 111, 110, 101, 49, 50, 44, 49, 0, 0, 0, 0, 0, 0,
36, 0, 0, 0, 53, 56, 53, 54, 56, 55, 50, 55, 45, 67, 69, 48, 49, 45, 52,
68, 48, 67, 45, 56, 52, 69, 70, 45, 53, 48, 51, 57, 50, 65, 65, 54, 50,
68, 57, 56, 0, 2, 0, 0, 0, 67, 78, 0, 5, 0, 0, 0, 122, 104, 95, 84, 87,
0, 9, 0, 0, 0, 49, 46, 49, 57, 48, 49, 46, 50, 48, 1, 0, 0, 0, 0, 10, 0,
0, 0, 105, 79, 83, 32, 49, 52, 46, 55, 46, 49, 0, 17, 0, 0, 0, 50, 51,
55, 52, 48, 48, 48, 48, 48, 48, 48, 49, 55, 51, 57, 53, 55, 0, 33, 0, 0,
0, 84, 79, 85, 97, 100, 114, 70, 119, 114, 68, 56, 49, 106, 122, 68, 50,
67, 86, 71, 118, 70, 90, 74, 69, 118, 105, 79, 71, 106, 104, 100, 89,
110, 0, 88, 0, 0, 0, 54, 86, 103, 74, 90, 111, 53, 86, 76, 99, 75, 120,
121, 110, 122, 111, 116, 98, 84, 114, 67, 71, 120, 113, 50, 79, 49, 49,
52, 115, 77, 49, 119, 113, 57, 66, 70, 106, 103, 67, 86, 105, 50, 117,
100, 54, 80, 117, 98, 105, 97, 89, 85, 87, 52, 52, 81, 79, 66, 102, 73,
116, 73, 88, 47, 97, 75, 86, 54, 88, 120, 52, 86, 52, 122, 112, 103, 57,
108, 51, 112, 75, 84, 116, 67, 81, 61, 61, 0, 13, 0, 0, 0, 48, 84, 55,
48, 48, 87, 48, 49, 48, 52, 48, 50, 48, 240, 46, 17, 0, 0, 0, 0, 0>>

PacketParser.parse_packet(packet)
