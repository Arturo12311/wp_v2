import json
from anthropic import Anthropic
import time

INPUT_FILE = r"C:\repos\wp\assets\data\function_data_test.json"
OUTPUT_FILE = r"C:\repos\wp\assets\poc\struct_poc\proto_struct_map3.exs"
BATCH_SIZE = 10  # Adjust based on your needs and API limits

def chunk_data(data, batch_size):
    for i in range(0, len(data), batch_size):
        yield data[i:i + batch_size]

def process_with_claude(batch):
    client = Anthropic(api_key="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")
    
    system_prompt = "You are an expert in analyzing decompiled C++ code and extracting structural information into Elixir format, with a deep understanding of complex data structures, inheritance, and Elixir syntax."

    human_prompt = r"""Analyze the following C++ function pairs (ToJsonString and opcode_name) and extract their structures into an Elixir-friendly format. Focus on the structure information and inheritance. Use the following format for the entire output:

%{
  "OpcodeName1" => [
    %{name: "__base__", type: {:struct, "BaseStructureName"}},  # Include this if a base exists
    %{name: "FieldName1", type: field_type1},
    %{name: "FieldName2", type: field_type2},
    # ... more fields ...
  ],

  "OpcodeName2" => [
    %{name: "FieldName1", type: field_type1},
    %{name: "FieldName2", type: field_type2},
    # ... more fields ...
  ],
}

Where:
- "OpcodeName" is the name provided in the opcode_name field of the input data
- "__base__" is a special field that represents the base class. Include it if a base class exists or if the structure inherits from another class
- "FieldName" is the name of each field in the JSON structure, inferred from the ToJsonString function
- field_type is the Elixir equivalent of the C++ type, using the following conventions:
  - For integers (int or uint): {:int, size_in_bytes} or {:uint, size_in_bytes}
  - For floats: :float
  - For booleans: :bool
  - For strings: :string
  - For lists: {:list, element_type}
  - For structs: {:struct, "StructName"}: dont include the FTz at the beginning of StructNames.
  - For nullable types: {:nullable, base_type}
  - For message fields: :message

Important notes:
1. Use the opcode_name provided in the input data as the key for each structure in the outer map.
2. Infer the fields and their types from the ToJsonString function content.
3. Always include the __base__ field if the structure inherits from another class, even if there are no other specific members.
4. If a structure only inherits from a base class and has no specific members, still represent it with the __base__ field.
5. Message fields are special fields where a hash must be read to map the fields to the correct structure. Use :message for these fields.
6. When you encounter a message field in the ToJsonString function, it often looks like a nested structure or a call to another ToJsonString function.

Here's an example of the expected output format, including cases of inheritance:

%{
  "EntityRemoveBulkNotify" => [
    %{name: "EntityGuids", type: {:list, {:uint, 8}}},
    %{name: "EntityRemoveReason", type: {:uint, 1}}
  ],

  "OccupiableNpcBossSpawnInfo" => [
    %{name: "__base__", type: {:struct, "BaseSpawnInfo"}},
    %{name: "BossSpawnInfo", type: {:nullable, {:struct, "BossSpawnInfo"}}},
    %{name: "DespawnDateTime", type: {:nullable, {:struct, "FDateTime"}}}
  ],

  "InheritedStructureWithNoMembers" => [
    %{name: "__base__", type: {:struct, "BaseStructureName"}}
  ],

  "OtherPlayerLootNotify" => [
    %{name: "__base__", type: {:struct, "BaseLootNotify"}},
    %{name: "NpcGuid", type: {:uint, 8}},
    %{name: "NpcLocation_cm", type: {:struct, "FVector"}},
    %{name: "PlayerGuid", type: {:uint, 8}},
    %{name: "PlayerLocation_cm", type: {:struct, "FVector"}},
    %{name: "ItemIndexWithCounts", type: {:list, :message}},
    %{name: "IsErosionInstallerReward", type: :bool}
  ]
}

Provide only the Elixir structures in your response, without any additional explanation. Ensure your response is valid Elixir map fields. I will manually put the %{ and } once you finish. Always include the __base__ field if the structure inherits from another class, even if there are no other specific members.

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
        response = message.content[0].text
        return response
    except Exception as e:
        error_message = f"Error calling Claude API: {str(e)}"
        print(error_message)
        return f"%{{\n  error: \"{error_message}\"\n}}"


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
        f.write("%{\n")
        f.write(",\n".join(all_results))
        f.write("\n}")
    
    print(f"Processing complete. Results written to {OUTPUT_FILE}")

if __name__ == "__main__":
    main()
