if [ $# -ne 2 ]; then
	echo "$0 input_file outfile_file"
	exit 1
fi

input_file=$1
output_file=$2

if [ ! -f "$input_file" ]; then
	echo "Error"
	exit 1
fi

sed 's/old_text/new_text/g' "$input_file" > "$output_file

echo "Replaced successfully"
