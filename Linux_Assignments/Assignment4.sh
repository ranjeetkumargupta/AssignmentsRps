#Assignment 4: Write a script that creates a directory named TestDir and inside it, creates ten files named File1.txt, File2.txt, ... File10.txt. Each file should contain its filename as its content (e.g., File1.txt contains "File1.txt").


dirName="TestDir"

if [ ! -d "$dirName" ]; then
  mkdir "$dirName"
fi

for i in {1..10}
do
  fileName="File$i.txt"
  echo "$fileName" > "$dirName/$fileName"
done

echo "Files created successfully!"

