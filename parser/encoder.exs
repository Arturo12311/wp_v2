defmodule Encoder do
  @structures File.read!(Path.join([__DIR__, "../assets/maps/test_structure_map.exs"])) |> Code.eval_string() |> elem(0)

  @type packet_name :: String.t()
  @type packet_data :: map()
  @type binary_packet :: binary()
  @type opcode :: non_neg_integer()

  @spec encode_packet(packet_name(), packet_data()) :: {:ok, binary_packet()} | {:error, atom()}
  def encode_packet(name, data) do
    with {:ok, structure} <- find_structure(name),
         {:ok, encoded_opcode} <- encode_opcode(data["null"], data["opcode"]),
         {:ok, encoded_fields} <- encode_structure(structure, data) do
      encoded_packet = encoded_opcode <> encoded_fields
      IO.inspect(:binary.bin_to_list(encoded_packet), label: "Encoded Packet", limit: :infinity)
      {:ok, encoded_packet}
    else
      {:error, reason} -> {:error, reason}
    end
  end

  # Private functions

  defp find_structure(name) do
    case Map.get(@structures, name) do
      nil -> {:error, :unknown_structure}
      structure -> {:ok, structure}
    end
  end

  defp encode_opcode(is_null, opcode) when is_boolean(is_null) and is_integer(opcode) do
    null_byte = if is_null, do: 1, else: 0
    {:ok, <<null_byte::8, opcode::little-32>>}
  end
  defp encode_opcode(_, _), do: {:error, :invalid_header_data}

  defp encode_structure(structure, data) do
    result = Enum.reduce_while(structure, <<>>, fn field, acc ->
      case encode_field(field, Map.get(data, field.name)) do
        {:ok, encoded} -> {:cont, acc <> encoded}
        {:error, reason} -> {:halt, {:error, reason}}
      end
    end)

    case result do
      {:error, reason} -> {:error, reason}
      encoded when is_binary(encoded) -> {:ok, encoded}
    end
  end

  # Include all encode_field functions here
  # ...

end
