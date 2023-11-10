#!/bin/bash

folder_name=$1

if [ ! -d "$folder_name" ]; then
	mkdir "$folder_name"
fi

for i in 0 1 2 3 4
do
	touch "$folder_name/file_$i.txt"
done

tar -czf "$folder_name.tar.gz" "$folder_name"
mkdir "$folder_name/$folder_name"

tar -xzf "$folder_name.tar.gz" -C "$folder_name"

exit 0 
