#Assignment 2: Write a script that reads numbers from the user until they enter '0'. The script should also print whether each number is odd or even.

while true
do
	echo -n "Enter the number (enter 0 to quit):"
	read num
	if [ "$num" -eq 0 ]; then
			echo "Exiting the program."
			break
	fi
	if [ $((num%2)) -eq 0 ]; then
			echo "'num' is even."
	else
		echo "'num' is odd."
	fi
done
