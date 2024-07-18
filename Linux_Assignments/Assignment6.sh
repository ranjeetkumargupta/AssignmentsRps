#Assignment 6: Given a sample log file, write a script using grep to extract all lines containing "ERROR". Use awk to print the date, time, and error message of each extracted line.

#Data Processing with sed
log_file="sample.log"
grep "ERROR" "$log_file" | awk '{print $1, $2, $3, substr($0, index($0,$5))}'
