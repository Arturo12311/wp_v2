# @category: Analysis
# @author: Your Name
# @menupath: Analysis.Extract ToJsonString and GetTypeName Functions (With Cleaning)

import json
import re
from ghidra.app.decompiler import DecompInterface
from ghidra.util.task import TaskMonitor

OUTPUT_FILE = r"C:\work\wp\function_data.json"

def is_likely_thunk(function):
    if function.getBody().getNumAddresses() < 5:
        return True
    decompiled = get_decompiled_function(function)
    if "thunk to" in decompiled.lower():
        return True
    return False

def find_related_functions():
    function_manager = currentProgram.getFunctionManager()
    related_functions = []
    to_json_string_funcs = {}

    for f in function_manager.getFunctions(True):
        if f.getName() == "ToJsonString" and not is_likely_thunk(f):
            class_name = f.getParentNamespace().getName()
            if class_name not in to_json_string_funcs:
                to_json_string_funcs[class_name] = f

    for class_name, to_json_string in to_json_string_funcs.items():
        matching_get_type_name = None
        for f in function_manager.getFunctions(True):
            if f.getName() == "GetTypeName" and f.getParentNamespace().getName() == class_name and not is_likely_thunk(f):
                matching_get_type_name = f
                break
        
        if matching_get_type_name:
            related_functions.append((to_json_string, matching_get_type_name))
            print("Found complete pair for class: {0}".format(class_name))
        else:
            print("Warning: No matching GetTypeName for class: {0}, skipping".format(class_name))

    return related_functions

def get_decompiled_function(function):
    decompiler = DecompInterface()
    decompiler.openProgram(currentProgram)
    result = decompiler.decompileFunction(function, 30, TaskMonitor.DUMMY)
    if result.decompileCompleted():
        return result.getDecompiledFunction().getC()
    else:
        return "Error decompiling function"

def clean_function_output(function_text):
    # Remove the warning and function signature comments
    function_text = re.sub(r'/\*.*?\*/\s*', '', function_text, flags=re.DOTALL)
    
    # Remove any leading whitespace and newlines
    function_text = function_text.lstrip()
    
    # Remove the function signature if it's repeated
    lines = function_text.split('\n')
    if len(lines) > 1 and lines[0].strip().endswith(')') and lines[1].strip() == '{':
        function_text = '\n'.join(lines[1:])
    
    return function_text.strip()

def main():
    functions = find_related_functions()
    print("Found {0} complete ToJsonString and GetTypeName function pairs.".format(len(functions)))
    
    if not functions:
        print("No complete function pairs found. Exiting.")
        return

    output = []
    for to_json_string, get_type_name in functions:
        class_name = to_json_string.getParentNamespace().getName()
        output.append({
            "class_name": class_name,
            "to_json_string": clean_function_output(get_decompiled_function(to_json_string)),
            "get_type_name": clean_function_output(get_decompiled_function(get_type_name))
        })
    
    with open(OUTPUT_FILE, 'w') as f:
        json.dump(output, f, indent=2)
    
    print("Successfully extracted {0} function pairs. Data written to {1}".format(len(functions), OUTPUT_FILE))

if __name__ == '__main__':
    main()