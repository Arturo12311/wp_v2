# IMPORTANT
# some packetfields not yet defined.

defmodule PacketEncoder do
  @structures File.read!(Path.join(__DIR__, "structures.exs")) |> Code.eval_string() |> elem(0)

  def encode_packet(name, data) do
    structure = find_structure(@structures, name)
    IO.puts("Encoding Structure: #{inspect(structure)}")

    # Encode the header fields (opcode and hash)
    header = encode_header(data["opcode"], data["hash"])

    # Encode each field in the structure
    encoded_fields = encode_structure(structure, data)
    IO.puts("Encoded Binary: #{inspect(header <> encoded_fields)}")

    header <> encoded_fields
  end

  defp find_structure(structures, name) do
    {_, structure} = Enum.find(structures, fn {struct_name, _fields} ->
      struct_name == name
    end)
    structure
  end

  defp encode_header(opcode, hash) do
    <<0, opcode::little-32, 0, hash::little-32>>
  end

  defp encode_structure(structure, data) do
    Enum.reduce(structure, <<>>, fn field, acc ->
      encoded_field = encode_field(field, data[field.name])
      acc <> encoded_field
    end)
  end

  defp encode_field(%{name: _name, type: {:uint, 4}}, value) do
    <<value::little-32>>
  end

  defp encode_field(%{name: _name, type: {:string, :dynamic}}, value) do
    strlen = byte_size(value)
    <<0, strlen::little-32, value::binary>>
  end

  # Add other encode_field clauses as necessary...
end

# Example usage:
data = %{
  "opcode" => 3953135056,
  "hash" => 2482275904,
  "local_area_network_address" => "[fe80::835:c3bd:7b7e:12fd]:49741",
  "market" => 2,
  "authentication_kind" => 103,
  "os_kind" => 2,
  "os_version" => "14.7.1",
  "device_model" => "iPhone12,1",
  "adid" => "adid_value",
  "idfv" => "idfv_value",
  "country_code" => "CN",
  "language" => "zh_TW",
  "app_version" => "1.1901.20",
  "os_type" => 1,
  "os_name" => "iOS 14.7.1",
  "npsn" => "npsn_value",
  "np_token" => "np_token_value",
  "ngsm_token" => "ngsm_token_value",
  "npa_code" => "npa_code_value",
  "nexon_sn" => 1126128,
  "terminator" => 0
}

binary = PacketEncoder.encode_packet("InfoAuthenticate", data)
IO.inspect(binary, label: "Encoded Packet")
