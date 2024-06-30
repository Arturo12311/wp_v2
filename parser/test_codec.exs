# test_codec.exs

# Define the paths to your files
packet_codec_path = Path.expand("packet_codec.exs", __DIR__)
structure_codec_path = Path.expand("structure_codec.exs", __DIR__)

# Ensure the current directory and parent directory are in the code path
Code.prepend_path(__DIR__)
Code.prepend_path(Path.expand("..", __DIR__))

# Require the necessary modules
Code.require_file(packet_codec_path)
Code.require_file(structure_codec_path)

defmodule TestCodec do
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
IO.puts("Test starting.")
TestCodec.run_test()
