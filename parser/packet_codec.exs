defmodule PacketCodec do
  @moduledoc """
  Handles encoding and decoding of packet structures for network communication.
  Uses predefined structures and opcode mappings to process packets.
  """
  Code.require_file("parser/structure_codec.exs")

  @root_dir Path.expand("..", __DIR__)

  @structures_map Path.join([@root_dir, "assets", "data", "maps", "test_structure_map.exs"])
                  |> File.read!()
                  |> Code.eval_string()
                  |> elem(0)

  @opcode_map Path.join([@root_dir, "data", "maps", "opcode_map.exs"])
              |> File.read!()
              |> Code.eval_string()
              |> elem(0)

  @type packet_name :: String.t()
  @type packet_data :: map()
  @type binary_packet :: binary()
  @type opcode :: non_neg_integer()

  Code.require_file("structure_codec.exs")

  @doc """
  Encodes a packet given its name and data.
  """
  @spec encode_packet(packet_name(), packet_data()) :: {:ok, binary_packet()} | {:error, atom()}
  def encode_packet(name, data) do
    with {:ok, structure} <- find_structure(name),
         {:ok, encoded_opcode} <- encode_opcode(data["null"], data["opcode"]),
         {:ok, encoded_fields} <- StructureCodec.encode_structure(structure, data) do
      encoded_packet = encoded_opcode <> encoded_fields
      IO.inspect(:binary.bin_to_list(encoded_packet), label: "Encoded Packet", limit: :infinity)
      {:ok, encoded_packet}
    else
      {:error, reason} -> {:error, reason}
    end
  end

  @doc """
  Decodes a binary packet into its structured form.
  """
  @spec decode_packet(binary_packet()) :: {:ok, packet_data()} | {:error, atom()}
  def decode_packet(binary) do
    with {:ok, {opcode, message}} <- extract_header(binary),
         {:ok, name} <- find_name(opcode),
         {:ok, structure} <- find_structure(name),
         {:ok, parsed_data} <- StructureCodec.decode_structure(message, structure) do
      result = %{opcode => parsed_data}

      IO.inspect(result, label: name)
      {:ok, result}
    else
      {:error, reason} -> {:error, reason}
    end
  end

  # Private helper functions

  @spec find_structure(packet_name()) :: {:ok, list(map())} | {:error, :unknown_structure}
  defp find_structure(name) do
    case Map.get(@structures_map, name) do
      nil -> {:error, :unknown_structure}
      structure -> {:ok, structure}
    end
  end

  @spec find_name(opcode()) :: {:ok, packet_name()} | {:error, :unknown_opcode}
  defp find_name(opcode) do
    case Map.get(@opcode_map, Integer.to_string(opcode)) do
      nil -> {:error, :unknown_opcode}
      name -> {:ok, name}
    end
  end

  @spec encode_opcode(boolean(), opcode()) :: {:ok, binary()} | {:error, atom()}
  defp encode_opcode(is_null, opcode) when is_boolean(is_null) and is_integer(opcode) do
    null_byte = if is_null, do: 1, else: 0
    {:ok, <<null_byte::8, opcode::little-32>>}
  end
  defp encode_opcode(_, _), do: {:error, :invalid_header_data}

  @spec extract_header(binary()) :: {:ok, {opcode(), binary()}} | {:error, :invalid_header}
  defp extract_header(<<0, opcode::little-32, message::binary>>) do
    {:ok, {opcode, message}}
  end
  defp extract_header(_), do: {:error, :invalid_header}
end
