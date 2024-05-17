mkdir TestDir
cd TestDir || exit

for((i=1;i<10;i++)); do
	echo "File $i.txt" > "File$i.txt"
done

ls
