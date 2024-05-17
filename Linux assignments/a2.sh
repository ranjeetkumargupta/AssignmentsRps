while true; do
	read -p "Enter a num: " number

	if [ "$number" -eq 0 ]; then
		break;
	fi

	if [ "$((number%2))" -eq 0 ]; then
		echo "Even"
	else 
		echo "Odd"
	fi
done
