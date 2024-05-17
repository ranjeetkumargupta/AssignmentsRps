debug(){
	if [ "$debug_mode" = true ]; then
		echo "[DEBUG] $1"
	fi
}

debug_mode=false
if [ "$1" = "-d" ]; then
	debug_modee=true
	debug "Debug mode enabled"
fi

if [ -d "TestDir" ]; then
	echo "Error"
	exit 1
fi

mkdir TestDir
if [ $? -ne 0 ]; then
	echo "Error: Failed to create"
	exit 1
fi
debug "Directory 'TestDir' created "

cd TestDir
if [ $? -ne 0 ]; then
	echo "Error"
	exit 1
fi
debug "Changed dir"

for((i=0;i<=10;i++)); do
	echo "File $1.txt" > "File$1.txt"
	if [ $? -ne 0 ]; then
		echo "Error"
		exit 1
	fi
	debug "File 'File$1.txt' created"
done

ls
