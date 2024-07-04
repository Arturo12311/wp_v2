import json
import re

def extract_unique_patterns(json_file_path):
    # Read the JSON file
    with open(json_file_path, 'r') as file:
        data = json.load(file)
    
    # Convert the entire JSON object to a string
    json_string = json.dumps(data)
    
    # Define the pattern
    pattern = r'TozSerializableMessageLibNative::JsonSerializer<(.*?)>'
    
    # Find all matches
    matches = re.findall(pattern, json_string)
    
    # Get unique values
    unique_matches = list(set(matches))
    
    return unique_matches

# Example usage
file_path = 'C:\\repos\\wp\\assets\\data\\function_data_full.json'
results = extract_unique_patterns(file_path)

print("Extracted unique instances:")
for index, match in enumerate(results, 1):
    print(f"{index}. {match}")