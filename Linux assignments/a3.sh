count_lines(){
	local filename=$1
	local num_lines=$(wc -l < "$filename")
	echo "$num_lines"
}

count_lines "loop.sh"
