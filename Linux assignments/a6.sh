if [ $# -ne 1 ]; then
	echo "Usage: $0 logfile"
	exit 1
fi

logfile=$1

if [ ! -f "$logfile" ]; then
	echo "Error: log file '$logfile' not found"
	exit 1
fi

grep "ERROR" "$logfile" | awk '{
	fate = $1
	time = $2
	sub(/^ERROR /,"",$3)
	message = substr($0, index($0,$3))
	print date, time, message
}'


