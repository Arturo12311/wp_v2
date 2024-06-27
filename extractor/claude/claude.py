import json
from anthropic import Anthropic
import time

INPUT_FILE = r"C:\repos\wp\assets\data\function_data.json"
OUTPUT_FILE = r"C:\repos\wp\assets\poc\struct_poc\proto_struct_map3.exs"
BATCH_SIZE = 10  # Adjust based on your needs and API limits

def chunk_data(data, batch_size):
    for i in range(0, len(data), batch_size):
        yield data[i:i + batch_size]

def process_with_claude(batch):
    client = Anthropic(api_key="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")
    
    system_prompt = "You are an expert in analyzing decompiled C++ code and extracting structural information into Elixir format."

    human_prompt = r"""Analyze the following C++ function pairs (ToJsonString and GetTypeName) and extract their structures into an Elixir-friendly format. Focus only on the structure information, not on separate Members or TypeName fields. Use the following format for each structure:

{"StructureName",
   [
     %{name: "FieldName", type: field_type},
     # ... more fields ...
   ]},

Where:
- "StructureName" is the name of the structure (use the class name if available, otherwise use the value returned by GetTypeName)
- "FieldName" is the name of each field in the JSON structure
- field_type is the Elixir equivalent of the C++ type, using the following conventions:
  - For integers (int or uint): {:int, size_in_bytes} or {:uint, size_in_bytes}
  - For floats: :float
  - For booleans: :bool
  - For strings: :string
  - For lists: {:list, element_type}
  - For structs: {:struct, "StructName"}
  - For nullable types: {:nullable, base_type}

Here are some examples of the expected output format:

{"EntityRemoveBulkNotify",
   [
     %{name: "EntityGuids", type: {:list, {:uint, 8}}},
     %{name: "EntityRemoveReason", type: {:uint, 1}}
   ]},

{"OccupiableNpcBossSpawnInfo",
   [
     %{name: "BossSpawnInfo", type: {:nullable, {:struct, "BossSpawnInfo"}}},
     %{name: "DespawnDateTime", type: {:nullable, {:struct, "FDateTime"}}}
   ]},

{"OtherPlayerLootNotify",
   [
     %{name: "NpcGuid", type: {:uint, 8}},
     %{name: "NpcLocation_cm", type: {:struct, "FVector"}},
     %{name: "PlayerGuid", type: {:uint, 8}},
     %{name: "PlayerLocation_cm", type: {:struct, "FVector"}},
     %{name: "ItemIndexWithCounts", type: {:list, :message}},
     %{name: "IsErosionInstallerReward", type: :bool}
   ]},

Provide only the Elixir structures in your response, without any additional explanation. Ensure your response starts with %{ and ends with }.

Now, analyze the following function pairs and provide the structures in the format shown above:

""" + f"{json.dumps(batch, indent=2)}"

    try:
        message = client.messages.create(
            model="claude-3-5-sonnet-20240620",
            max_tokens=4096,
            temperature=0,
            system=system_prompt,
            messages=[
                {"role": "user", "content": human_prompt}
            ]
        )
        raw_output = message.content[0].text

        # Sanitize the output
        # sanitized_output = sanitize_output(raw_output)
        return raw_output
    except Exception as e:
        error_message = f"Error calling Claude API: {str(e)}"
        print(error_message)
        return f"%{{\n  error: \"{error_message}\"\n}}"

def sanitize_output(output):
    # Ensure the output starts with %{ and ends with }
    output = output.strip()
    if not output.startswith('%{'):
        output = '%{' + output
    if not output.endswith('}'):
        output += '}'
    return output

def main():
    with open(INPUT_FILE, 'r') as f:
        data = json.load(f)
    
    all_results = []
    for i, batch in enumerate(chunk_data(data, BATCH_SIZE)):
        print(f"Processing batch {i+1} of {(len(data)-1)//BATCH_SIZE + 1}")
        result = process_with_claude(batch)
        if result:
            all_results.append(result)
        time.sleep(1)  # Add a short delay between API calls
    
    with open(OUTPUT_FILE, 'w') as f:
        f.write("[\n")
        f.write(",\n".join(all_results))
        f.write("\n]")
    
    print(f"Processing complete. Results written to {OUTPUT_FILE}")

if __name__ == "__main__":
    main()
