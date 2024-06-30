defmodule PacketCodec do
  @moduledoc """
  Handles encoding and decoding of packet structures for network communication.
  Uses predefined structures and opcode mappings to process packets.
  """

  @structures File.read!(Path.join([__DIR__, "../assets/maps/test_structure_map.exs"])) |> Code.eval_string() |> elem(0)
  @opcode_map File.read!(Path.join([__DIR__, "../assets/maps/opcode_map.exs"])) |> Code.eval_string() |> elem(0)

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
         {:ok, parsed_data} <- decode_structure(message, structure) do
      result = %{opcode => parsed_data}

      IO.inspect(result, label: name)
      {:ok, result}
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
    {:ok, {opcode, message}}
  end
  defp extract_header(_), do: {:error, :invalid_header}

  @spec encode_structure(list(map()), map()) :: {:ok, binary()} | {:error, atom()}
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
      {<<>>, decoded} -> {:ok, decoded}
      {:error, reason} -> {:error, reason}
      {_rest, _incomplete_decode} -> {:error, :incomplete_decode}
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
    with {:ok, encoded_values} <- Enum.map(values, &encode_field(%{type: element_type}, &1)) |> Enum.all?(&match?({:ok, _}, &1)) && {:ok, Enum.map(values, fn {:ok, val} -> val end)} || {:error, :invalid_list_element} do
      length = length(values)
      {:ok, <<length::little-32, IO.iodata_to_binary(encoded_values)::binary>>}
    end
  end

  defp encode_field(%{type: :message}, value) when is_binary(value) do
    byte_size = byte_size(value)
    {:ok, <<byte_size::little-32, value::binary>>}
  end

  defp encode_field(%{type: {:struct, "Vector"}}, {x, y, z}) when is_float(x) and is_float(y) and is_float(z) do
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

  defp encode_field(_, _), do: {:error, :invalid_field}

  defp decode_field(<<value::little-integer-32, rest::binary>>, %{type: {:int, 4}}) do
    {:ok, {value, rest}}
  end

  defp decode_field(<<value::8, rest::binary>>, %{type: :bool}) do
    {:ok, {value != 0, rest}}
  end

  defp decode_field(<<value::little-float-32, rest::binary>>, %{type: :float}) do
    {:ok, {value, rest}}
  end

  defp decode_field(<<length::little-32, value::binary-size(length), rest::binary>>, %{type: {:string, :dynamic}}) do
    {:ok, {value, rest}}
  end

  defp decode_field(<<length::little-32, values::binary>>, %{type: {:list, element_type}}) do
    decode_list(values, length, element_type, [])
  end

  defp decode_field(<<length::little-32, value::binary-size(length), rest::binary>>, %{type: :message}) do
    {:ok, {value, rest}}
  end

  defp decode_field(<<x::little-float-32, y::little-float-32, z::little-float-32, rest::binary>>, %{type: {:struct, "Vector"}}) do
    {:ok, {{x, y, z}, rest}}
  end

  defp decode_field(<<value::little-32, rest::binary>>, %{type: {:struct, "Cuid"}}) do
    {:ok, {value, rest}}
  end

  defp decode_field(<<unix_timestamp::little-64, rest::binary>>, %{type: {:struct, "DateTime"}}) do
    {:ok, {DateTime.from_unix!(unix_timestamp), rest}}
  end

  defp decode_field(<<0::8, rest::binary>>, %{type: {:nullable, _inner_type}}) do
    {:ok, {nil, rest}}
  end

  defp decode_field(<<1::8, rest::binary>>, %{type: {:nullable, inner_type}}) do
    decode_field(rest, %{type: inner_type})
  end

  defp decode_field(binary, %{type: {:struct, struct_name}}) do
    with {:ok, structure} <- find_structure(struct_name),
         {:ok, decoded_struct} <- decode_structure(binary, structure) do
      {:ok, {decoded_struct, <<>>}}
    end
  end

  defp decode_field(_, _), do: {:error, :invalid_field}

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
    packet = <<0,198,43,38,151,0,58,0,0,0,93,209,248,9,18,8,104,34,133,128,51,123,33,
        17,163,221,246,94,76,56,251,167,193,100,75,61,186,165,10,169,46,67,
        189,139,224,112,34,191,20,77,114,19,92,45,43,232,211,55,172,127,8,209,
        4,114,241,181,16,148,0,3,0,0,0,1,0,1,0,0,1,0,0,157,170,165,170,107,91,
        127,66,35,31,37,207,104,152,6,54,226,155,191,135,33,144,211,29,143,
        134,200,151,205,209,159,204,85,89,51,227,146,37,222,227,208,118,167,
        247,152,231,88,56,179,129,111,153,137,109,193,212,167,158,82,144,186,
        150,96,161,211,87,213,159,4,177,109,113,58,68,31,163,187,74,171,54,
        111,188,236,154,152,144,145,234,110,40,97,41,201,101,151,240,194,47,
        76,250,18,170,111,148,158,20,227,208,237,30,250,234,195,68,61,23,120,
        0,89,105,4,16,96,114,98,40,132,248,67,55,218,237,130,102,102,173,3,
        199,242,217,83,7,0,178,179,58,64,235,21,29,123,23,201,126,96,52,7,166,
        114,50,220,8,80,61,58,193,251,169,100,11,99,79,14,20,87,248,241,176,
        199,132,80,208,205,199,187,146,97,51,249,133,237,59,125,163,66,187,9,
        1,29,244,55,171,125,236,106,204,28,64,70,72,125,218,192,217,60,247,
        126,205,95,135,183,70,81,251,149,88,90,152,52,132,185,186,81,195,213,
        64,187,60,86,193,48,12,43,248,57,116,233,24,25,115,205,114,252,108,
        162,17>>

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
