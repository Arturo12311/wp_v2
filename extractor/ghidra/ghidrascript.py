import json
import re
from ghidra.app.decompiler import DecompInterface # type: ignore
from ghidra.util.task import TaskMonitor # type: ignore

OUTPUT_FILE = r"C:\work\wp\function_data_test.json"
BATCH_SIZE = 100  # Process functions in batches

function_manager = currentProgram.getFunctionManager() # type: ignore
decompiler = DecompInterface()
decompiler.openProgram(currentProgram) # type: ignore

def is_valid_get_type_name(decompiled):
    match = re.search(r'return\s+"([^"]+)"\s*;', decompiled)
    return match.group(1) if match else False

def is_valid_to_json_string(decompiled):
    if re.search(r'ToJsonString\s*\(\s*\)\s*;\s*return\s*;', decompiled):
        return False
    return '{' in decompiled and '}' in decompiled

def find_related_functions():
    to_json_string_funcs = {}
    get_type_name_funcs = {}
    for function in function_manager.getFunctions(True):
        class_name = function.getParentNamespace().getName()
        if function.getName() == "ToJsonString":
            decompiled = get_decompiled_function(function, decompiler)
            if is_valid_to_json_string(decompiled):
                to_json_string_funcs[class_name] = function
        elif function.getName() == "GetTypeName":
            decompiled = get_decompiled_function(function, decompiler)
            if is_valid_get_type_name(decompiled):
                get_type_name_funcs[class_name] = function
    return [
        (to_json_string, get_type_name_funcs[class_name], class_name)
        for class_name, to_json_string in to_json_string_funcs.items()
        if class_name in get_type_name_funcs
    ]

def get_decompiled_function(function, decompiler):
    result = decompiler.decompileFunction(function, 30, TaskMonitor.DUMMY)
    if result.decompileCompleted():
        return result.getDecompiledFunction().getC()
    else:
        return "Error decompiling function"

def clean_function_output(function_text):
    # Remove comments and extra whitespace
    cleaned = re.sub(r'/\*.*?\*/|//.*?$', '', function_text, flags=re.DOTALL|re.MULTILINE)
    # Remove function signature
    cleaned = re.sub(r'^.*?\{', '{', cleaned, flags=re.DOTALL)
    return cleaned.strip()

def process_batch(batch, decompiler):
    output = []
    for to_json_string, get_type_name, class_name in batch:
        try:
            # Decompile functions
            to_json_decompiled = get_decompiled_function(to_json_string, decompiler)
            get_type_decompiled = get_decompiled_function(get_type_name, decompiler)

            # Validate functions
            opcode = is_valid_get_type_name(get_type_decompiled)
            is_valid_json = is_valid_to_json_string(to_json_decompiled)

            # Create output dictionary
            result = {
                "class_name": class_name,
                "ToJsonString": clean_function_output(to_json_decompiled),
                "opcode_name": opcode
            }

            output.append(result)

        except Exception as e:
            # Handle any exceptions that might occur during processing
            output.append({
                "class_name": class_name,
                "error": str(e),
                "error_type": type(e).__name__
            })

    return output

def main():
    functions = find_related_functions()
    print("Found {} potential function pairs.".format(len(functions)))
    all_output = []
    total_batches = (len(functions) - 1) // BATCH_SIZE + 1
    # total_batches = 2  # Set to process only 2 batches

    for i in range(total_batches):
        batch = functions[i*BATCH_SIZE:(i+1)*BATCH_SIZE]
        batch_output = process_batch(batch, decompiler)
        all_output.extend(batch_output)
        
        print("Processed batch {}/{}. Total pairs: {}".format(
            i + 1,
            total_batches,
            len(all_output)
        ))

    with open(OUTPUT_FILE, 'w') as f:
        json.dump(all_output, f, indent=2)

    print("Extracted {} function pairs. Data written to {}".format(len(all_output), OUTPUT_FILE))

    valid_types = sum(1 for item in all_output if item.get('is_valid_type', True))
    valid_jsons = sum(1 for item in all_output if item.get('is_valid_json', False))
    print("Valid GetTypeName implementations: {}/{}".format(valid_types, len(all_output)))
    print("Valid ToJsonString implementations: {}/{}".format(valid_jsons, len(all_output)))

if __name__ == '__main__':
    main()
