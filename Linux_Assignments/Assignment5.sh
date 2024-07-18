# Assignment 5: Modify the script to handle errors, such as the directory already existing or lacking permissions to create files. Add a debbugging mode that prints additional information when enabled.
DEBUG=false
if [ "$4" == "debug" ]; then
  DEBUG=true
fi

# Function to print debug messages
debug() {
  if $DEBUG; then
    echo "DEBUG: $1"
  fi
}

# Check if the correct number of arguments is provided
if [ "$#" -lt 3 ] || [ "$#" -gt 4 ]; then
  echo "Usage: $0 input_file old_text new_text [debug]"
  exit 1
fi

# Assign arguments to variables
input_file="$1"
old_text="$2"
new_text="$3"
output_file="output_${input_file}"

debug "Input file: $input_file"
debug "Old text: $old_text"
debug "New text: $new_text"
debug "Output file: $output_file"

# Check if the input file exists
if [ ! -f "$input_file" ]; then
  echo "Error: Input file '$input_file' does not exist."
  exit 1
fi

# Check if the output file already exists
if [ -e "$output_file" ]; then
  echo "Error: Output file '$output_file' already exists."
  exit 1
fi

# Check if we have read permission for the input file
if [ ! -r "$input_file" ]; then
  echo "Error: No read permission for input file '$input_file'."
  exit 1
fi

# Check if we have write permission for the output file's directory
output_dir=$(dirname "$output_file")
if [ ! -w "$output_dir" ]; then
  echo "Error: No write permission for the directory '$output_dir'."
  exit 1
fi

# Perform the text replacement using sed and save to a new file
debug "Running sed command to replace text..."
sed "s/${old_text}/${new_text}/g" "$input_file" > "$output_file"

# Check if the sed command was successful
if [ $? -eq 0 ]; then
  echo "Replacement complete. Output saved to $output_file"
else
  echo "Error: Failed to replace text in '$input_file'."
  exit 1
fi
