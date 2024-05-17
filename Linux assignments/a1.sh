file="myfile.txt"
if [ -e "$file" ]; then
	echo "file exits"
else
	echo "file doesnt exits"
fi
