defmodule PacketCodec do
  @moduledoc """
  Handles encoding and decoding of packet structures for network communication.
  Uses predefined structures and opcode mappings to process packets.
  """

  @structures File.read!(Path.join([__DIR__, "../assets/maps/test_structure_map.exs"]))
              |> Code.eval_string()
              |> elem(0)
  @opcode_map File.read!(Path.join([__DIR__, "../assets/maps/opcode_map.exs"]))
              |> Code.eval_string()
              |> elem(0)

  @type packet_name :: String.t()
  @type packet_data :: map()
  @type binary_packet :: binary()
  @type opcode :: non_neg_integer()

  @doc """
  Encodes a packet given its name and data.
  """
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

  @doc """
  Decodes a binary packet into its structured form.
  """
  @spec decode_packet(binary_packet()) :: {:ok, packet_data()} | {:error, atom()}
  def decode_packet(binary) do
    with {:ok, {opcode, message}} <- extract_header(binary),
         {:ok, name} <- find_name(opcode),
         {:ok, structure} <- find_structure(name),
         {:ok, {parsed_data, rest}} <- decode_structure(message, structure) do
      result = %{:_op => opcode, :msg => parsed_data}

      IO.inspect(result, label: name)
      {:ok, {result, rest}}
    else
      {:error, reason} -> {:error, reason}
    end
  end

  # Private functions

  @spec find_structure(packet_name()) :: {:ok, list(map())} | {:error, :unknown_structure}
  defp find_structure(name) do
    case Map.get(@structures, name) do
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
    IO.inspect({:extract_header, opcode})
    {:ok, {opcode, message}}
  end

  defp extract_header(_), do: {:error, :invalid_header}

  @spec encode_structure(list(map()), map()) :: {:ok, binary()} | {:error, atom()}
  defp encode_structure(structure, data) do
    result =
      Enum.reduce_while(structure, <<>>, fn field, acc ->
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

  @spec decode_structure(binary(), list(map())) :: {:ok, map()} | {:error, atom()}
  defp decode_structure(binary, structure) do
    Enum.reduce_while(structure, {binary, %{}}, fn field, {binary, acc} ->
      case decode_field(binary, field) do
        {:ok, {value, rest}} ->
          {:cont, {rest, Map.put(acc, field.name, value)}}

        {:error, reason} ->
          {:halt, {:error, reason}}
      end
    end)
    |> case do
      {:ok, {rest, decoded}} -> {:ok, {decoded, rest}}
      {:error, reason} -> {:error, reason}
    end
  end

  # Field encoding/decoding functions

  defp encode_field(%{type: {int_type, size}}, value)
       when int_type in [:uint, :int] and size in [1, 2, 4, 8] and is_integer(value) do
    {:ok, <<value::little-integer-size(size)-unit(8)>>}
  end

  defp encode_field(%{type: :bool}, value) when is_boolean(value) do
    {:ok, <<if(value, do: 1, else: 0)::8>>}
  end

  defp encode_field(%{type: :float}, value) when is_float(value) do
    {:ok, <<value::little-float-32>>}
  end

  defp encode_field(%{type: {:string, :dynamic}}, value) when is_binary(value) do
    byte_size = byte_size(value)
    {:ok, <<byte_size::little-32, value::binary>>}
  end

  defp encode_field(%{type: {:list, element_type}}, values) when is_list(values) do
    with {:ok, encoded_values} <-
           (Enum.map(values, &encode_field(%{type: element_type}, &1))
            |> Enum.all?(&match?({:ok, _}, &1)) &&
              {:ok, Enum.map(values, fn {:ok, val} -> val end)}) ||
             {:error, :invalid_list_element} do
      length = length(values)
      {:ok, <<length::little-32, IO.iodata_to_binary(encoded_values)::binary>>}
    end
  end

  defp encode_field(%{type: :message}, value) when is_binary(value) do
    byte_size = byte_size(value)
    {:ok, <<byte_size::little-32, value::binary>>}
  end

  defp encode_field(%{type: {:struct, "Vector"}}, {x, y, z})
       when is_float(x) and is_float(y) and is_float(z) do
    {:ok, <<x::little-float-32, y::little-float-32, z::little-float-32>>}
  end

  defp encode_field(%{type: {:struct, "Cuid"}}, value) when is_integer(value) do
    {:ok, <<value::little-32>>}
  end

  defp encode_field(%{type: {:struct, "DateTime"}}, %DateTime{} = value) do
    unix_timestamp = DateTime.to_unix(value)
    {:ok, <<unix_timestamp::little-64>>}
  end

  defp encode_field(%{type: {:nullable, _inner_type}}, nil) do
    {:ok, <<0::8>>}
  end

  defp encode_field(%{type: {:nullable, inner_type}}, value) do
    with {:ok, encoded} <- encode_field(%{type: inner_type}, value) do
      {:ok, <<1::8, encoded::binary>>}
    end
  end

  defp encode_field(%{type: {:struct, struct_name}}, value) when is_map(value) do
    with {:ok, structure} <- find_structure(struct_name),
         {:ok, encoded} <- encode_structure(structure, value) do
      {:ok, encoded}
    end
  end

  defp encode_field(_, ftype) do
    IO.inspect({:unknown_field_type, ftype})
    {:error, :invalid_field}
  end

  defp decode_field(<<value::little-integer-32, rest::binary>>, %{type: {:int, 4}}) do
    {:ok, {value, rest}}
  end

  defp decode_field(<<value::8, rest::binary>>, %{type: :bool}) do
    {:ok, {value != 0, rest}}
  end

  defp decode_field(<<value::little-float-32, rest::binary>>, %{type: :float}) do
    {:ok, {value, rest}}
  end

  defp decode_field(<<length::little-32, value::binary-size(length), rest::binary>>, %{
         type: {:string, :dynamic}
       }) do
    {:ok, {value, rest}}
  end

  defp decode_field(<<length::little-32, values::binary>>, %{type: {:list, element_type}}) do
    decode_list(values, length, element_type, [])
  end

  defp decode_field(data, %{type: :message}) do
    with {:ok, {value, rest}} <- decode_packet(data) do
      {:ok, {value, rest}}
    end
  end

  defp decode_field(
         <<x::little-float-32, y::little-float-32, z::little-float-32, rest::binary>>,
         %{type: {:struct, "Vector"}}
       ) do
    {:ok, {{x, y, z}, rest}}
  end

  defp decode_field(<<0, value::little-32, rest::binary>>, %{type: :string}) do
    # strings always prepemd a zero marking non null value 
    {:ok, {value, rest}}
  end

  defp decode_field(<<value::little-32, rest::binary>>, %{type: {:struct, "Cuid"}}) do
    {:ok, {value, rest}}
  end

  defp decode_field(<<unix_timestamp::little-64, rest::binary>>, %{type: {:struct, "DateTime"}}) do
    {:ok, {DateTime.from_unix!(unix_timestamp), rest}}
  end

  defp decode_field(<<1::8, rest::binary>>, %{type: {:nullable, _inner_type}}) do
    {:ok, {nil, rest}}
  end

  defp decode_field(<<0::8, rest::binary>>, %{type: {:nullable, inner_type}}) do
    decode_field(rest, %{type: inner_type})
  end

  defp decode_field(binary, %{type: {:struct, struct_name}}) do
    with {:ok, structure} <- find_structure(struct_name),
         {:ok, decoded_struct} <- decode_structure(binary, structure) do
      {:ok, {decoded_struct, <<>>}}
    end
  end

  defp decode_field(_, ftype) do
    IO.inspect({:unknown_field_type, ftype})
    {:error, :invalid_field}
  end

  defp decode_list(rest, 0, _element_type, acc), do: {:ok, {Enum.reverse(acc), rest}}

  defp decode_list(binary, count, element_type, acc) do
    case decode_field(binary, %{type: element_type}) do
      {:ok, {value, rest}} -> decode_list(rest, count - 1, element_type, [value | acc])
      {:error, reason} -> {:error, reason}
    end
  end
end

defmodule PacketCodecTest do
  def run_test do
    IO.puts("Starting PacketCodec test...")

    # The packet bytes to test

    _packet =
      <<0, 208, 13, 160, 235, 0, 64, 134, 244, 147, 0, 32, 0, 0, 0, 91, 102, 101, 56, 48, 58, 58,
        56, 51, 53, 58, 99, 51, 98, 100, 58, 55, 98, 55, 101, 58, 49, 50, 102, 100, 93, 58, 52,
        57, 55, 52, 49, 2, 0, 0, 0, 103, 0, 0, 0, 2, 0, 0, 0, 0, 6, 0, 0, 0, 49, 52, 46, 55, 46,
        49, 0, 10, 0, 0, 0, 105, 80, 104, 111, 110, 101, 49, 50, 44, 49, 0, 0, 0, 0, 0, 0, 36, 0,
        0, 0, 53, 56, 53, 54, 56, 55, 50, 55, 45, 67, 69, 48, 49, 45, 52, 68, 48, 67, 45, 56, 52,
        69, 70, 45, 53, 48, 51, 57, 50, 65, 65, 54, 50, 68, 57, 56, 0, 2, 0, 0, 0, 67, 78, 0, 5,
        0, 0, 0, 122, 104, 95, 84, 87, 0, 9, 0, 0, 0, 49, 46, 49, 57, 48, 49, 46, 50, 48, 1, 0, 0,
        0, 0, 10, 0, 0, 0, 105, 79, 83, 32, 49, 52, 46, 55, 46, 49, 0, 17, 0, 0, 0, 50, 51, 55,
        52, 48, 48, 48, 48, 48, 48, 48, 49, 55, 51, 57, 53, 55, 0, 33, 0, 0, 0, 84, 79, 85, 97,
        100, 114, 70, 119, 114, 68, 56, 49, 106, 122, 68, 50, 67, 86, 71, 118, 70, 90, 74, 69,
        118, 105, 79, 71, 106, 104, 100, 89, 110, 0, 88, 0, 0, 0, 54, 86, 103, 74, 90, 111, 53,
        86, 76, 99, 75, 120, 121, 110, 122, 111, 116, 98, 84, 114, 67, 71, 120, 113, 50, 79, 49,
        49, 52, 115, 77, 49, 119, 113, 57, 66, 70, 106, 103, 67, 86, 105, 50, 117, 100, 54, 80,
        117, 98, 105, 97, 89, 85, 87, 52, 52, 81, 79, 66, 102, 73, 116, 73, 88, 47, 97, 75, 86,
        54, 88, 120, 52, 86, 52, 122, 112, 103, 57, 108, 51, 112, 75, 84, 116, 67, 81, 61, 61, 0,
        13, 0, 0, 0, 48, 84, 55, 48, 48, 87, 48, 49, 48, 52, 48, 50, 48, 240, 46, 17, 0, 0, 0, 0,
        0>>

    packet =
      <<0, 208, 13, 160, 235, 0, 12, 6, 189, 254, 0, 32, 0, 0, 0, 91, 102, 101, 56, 48, 58, 58,
        56, 51, 53, 58, 99, 51, 98, 100, 58, 55, 98, 55, 101, 58, 49, 50, 102, 100, 93, 58, 52,
        57, 55, 51, 53, 128, 4, 182, 68>>

    IO.puts("Starting PacketCodec test...")
    IO.puts("Packet size: #{byte_size(packet)} bytes")

    case PacketCodec.decode_packet(packet) do
      {:ok, decoded} ->
        IO.puts("Packet decoded successfully!")
        IO.inspect(decoded, label: "Decoded packet", limit: :infinity)

      {:error, reason} ->
        IO.puts("Error decoding packet: #{inspect(reason)}")
    end

    IO.puts("Test completed.")
  end
end

# Run the test
PacketCodecTest.run_test()
