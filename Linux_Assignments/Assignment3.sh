#Assignment 3: Create a function that takes a filename as an argument and prints the number of lines in the file. Call this function from your script with different filenames.

count_no_of_line_in_file() {
    local name=$1
    
    if [ -f "$name" ]; then
        local num_lines=$(wc -l < "$name")
        echo "The file '$name' has $num_lines lines."
    else
        echo "The file '$name' does not exist."
    fi
}
main() {
   
    local names=("file1.txt" "file2.txt" "file3.txt")

    
    for filename in "${names[@]}"; do
        count_no_of_line_in_file "$filename"
    done
}
main
