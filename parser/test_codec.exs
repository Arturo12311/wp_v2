# Save this as test_codec.exs

defmodule CodecTest do
  def run_tests do
    test_packet_codec()
    test_structure_codec()
    IO.puts("All tests completed.")
  end

  defp test_packet_codec do
    IO.puts("Testing PacketCodec...")
    packet_type = :test_packet
    packet_data = %{field1: "value1", field2: 42}

    case PacketCodec.encode(packet_type, packet_data) do
      {:ok, encoded} ->
        IO.puts("  Encoded successfully")
        case PacketCodec.decode(encoded) do
          {:ok, {^packet_type, ^packet_data}} ->
            IO.puts("  Decoded successfully, data matches")
          {:ok, _} ->
            IO.puts("  Error: Decoded data doesn't match original")
          {:error, reason} ->
            IO.puts("  Error decoding: #{inspect(reason)}")
        end
      {:error, reason} ->
        IO.puts("  Error encoding: #{inspect(reason)}")
    end
  end

  defp test_structure_codec do
    IO.puts("Testing StructureCodec...")
    structure = [
      %{name: :field1, type: {:string, :dynamic}},
      %{name: :field2, type: {:uint, 4}}
    ]
    data = %{field1: "test", field2: 42}

    case StructureCodec.encode_structure(structure, data) do
      {:ok, encoded} ->
        IO.puts("  Encoded successfully")
        case StructureCodec.decode_structure(encoded, structure) do
          {:ok, ^data} ->
            IO.puts("  Decoded successfully, data matches")
          {:ok, _} ->
            IO.puts("  Error: Decoded data doesn't match original")
          {:error, reason} ->
            IO.puts("  Error decoding: #{inspect(reason)}")
        end
      {:error, reason} ->
        IO.puts("  Error encoding: #{inspect(reason)}")
    end
  end
end

# Run the tests
CodecTest.run_tests()
