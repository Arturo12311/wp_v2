defmodule Decoder do
  @structures File.read!(Path.join([__DIR__, "../assets/maps/test_structure_map.exs"])) |> Code.eval_string() |> elem(0)
  @opcode_map File.read!(Path.join([__DIR__, "../assets/maps/opcode_map.exs"])) |> Code.eval_string() |> elem(0)

  @type packet_name :: String.t()
  @type packet_data :: map()
  @type binary_packet :: binary()
  @type opcode :: non_neg_integer()

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

  defp find_structure(name) do
    case Map.get(@structures, name) do
      nil -> {:error, :unknown_structure}
      structure -> {:ok, structure}
    end
  end

  defp find_name(opcode) do
    case Map.get(@opcode_map, Integer.to_string(opcode)) do
      nil -> {:error, :unknown_opcode}
      name -> {:ok, name}
    end
  end

  defp extract_header(<<0, opcode::little-32, message::binary>>) do
    {:ok, {opcode, message}}
  end
  defp extract_header(_), do: {:error, :invalid_header}

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

  # Include all decode_field and decode_list functions here
  # ...

end
