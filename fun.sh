
greet(){
	echo "Hello,$1"
return 99
}
return_value=$?
echo "$return_value"
greet "a"
echo "After the function exe: $return_value"
returned_value=$(greet)
echo "$returned_value"
