import json
import anthropic
import time
import re

INPUT_FILE = r"C:\repos\wp\assets\data\function_data.json"
OUTPUT_FILE = r"C:\repos\wp\maps\struct_map.exs"
MAX_BATCH_SIZE = 15  # Adjust based on Claude's limits and your needs

def chunk_data(data, max_size):
    for i in range(0, len(data), max_size):
        yield data[i:i + max_size]

def process_with_claude(batch):
    client = anthropic.Anthropic(api_key="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")
    
    system_prompt = """
    You are an expert in analyzing decompiled code and extracting structural information. Your task is to analyze pairs of decompiled functions (ToJsonString and GetTypeName) and extract the structure of the class they represent into an Elixir-friendly format.
    """
    
    human_prompt = f"""
    Here are the function pairs to analyze:

    {json.dumps(batch, indent=2)}

    For each pair, provide a structure formatted as follows:

    "OpcodeName" => %{{
      base: "BaseStructureName",  # If there's a base structure, otherwise nil
      fields: [
        %{{name: "field_name", type: {{:field_type, :size_or_dynamic}}}},
        # ... more fields ...
      ]
    }},

    Where:
    - "OpcodeName" is the string or number returned by the GetTypeName function (use the value in "type_name_value")
    - "BaseStructureName" is the name of the base structure if one exists, or nil if there isn't one
    - "field_name" is the name of each field in the JSON structure from ToJsonString
    - "field_type" is the Elixir equivalent of the C++ type (e.g., :string, :integer, :float, :boolean, :object, :array)
    - "size_or_dynamic" is either a specific size for fixed-size types or :dynamic for variable-size types

    Please provide only the Elixir structures in your response, without any additional explanation.
    Format the output as valid Elixir map entries, with each structure separated by a comma and newline.
    If you can't determine a field's type, use {{:unknown, :dynamic}}.
    Do not include the outer %{{ }} in your response, as we'll be appending multiple results.
    """

    try:
        response = client.completions.create(
            model="claude-2.1",
            prompt=f"{system_prompt}\n\nHuman: {human_prompt}\n\nAssistant: Certainly! I'll analyze the function pairs and provide the Elixir structures as requested. Here's the extracted information:\n\n",
            max_tokens_to_sample=4000,
            temperature=0,
        )
        return response.completion
    except Exception as e:
        print(f"Error calling Claude API: {str(e)}")
        return None

def clean_claude_response(response):
    # Remove any leading/trailing whitespace and newlines
    response = response.strip()
    
    # Remove any outer %{ } if present
    response = re.sub(r'^\s*%\{\s*|\s*\}\s*$', '', response)
    
    return response

def main():
    with open(INPUT_FILE, 'r') as f:
        data = json.load(f)
    
    all_results = []
    for i, batch in enumerate(chunk_data(data, MAX_BATCH_SIZE)):
        print(f"Processing batch {i+1} of {(len(data)-1)//MAX_BATCH_SIZE + 1}")
        try:
            result = process_with_claude(batch)
            cleaned_result = clean_claude_response(result)
            all_results.append(cleaned_result)
        except Exception as e:
            print(f"Error processing batch {i+1}: {str(e)}")
        time.sleep(1)  # Add a short delay between API calls
    
    with open(OUTPUT_FILE, 'w') as f:
        f.write("%{\n")
        f.write(",\n".join(all_results))
        f.write("\n}")
    
    print(f"Processing complete. Results written to {OUTPUT_FILE}")

if __name__ == "__main__":
    main()