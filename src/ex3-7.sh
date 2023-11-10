#!/bin/bash

folder_name=$1

if [ ! -d "$folder_name" ]; then
	mkdir "$folder_name"
fi

for i in 0 1 2 3 4
do
	touch "$folder_name/file_$i.txt"
done

for file in $folder_name/*
do
	if [ -f "$file" ]; then
		file_name=$(basename "$file" .txt)
		mkdir "$folder_name/$file_name"
		ln -s "../$file_name.txt" "$folder_name/$file_name/$file_name.txt"
	fi
done
