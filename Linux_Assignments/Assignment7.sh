#Assignment 7: Create a script that takes a text file and replaces all occurrences of "old_text" with "new_text". Use sed to perform this operation and output the result to a new file.

if [[ $# -ne 4 ]]; then
    echo "Usage: $0 input_file old_text new_text output_file"
    exit 1
fi


input_file=$1
old_text=$2
new_text=$3
output_file=$4

# Check if the input file exists
if [[ ! -f $input_file ]]; then
    echo "The file '$input_file' does not exist."
    exit 1
fi


sed "s/$old_text/$new_text/g" "$input_file" > "$output_file"

echo "Replaced all occurrences of '$old_text' with '$new_text' in '$input_file' and saved the result to '$output_file'."

