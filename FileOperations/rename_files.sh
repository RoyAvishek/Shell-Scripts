#!/bin/bash

# Write a shell script that renames all files in a directory by adding a prefix or suffix to their names.

dir="$1"
prefix="$2"
suffix="$3"

if [ ! -d "$dir" ]; then
    echo "Please provide a correct dir"
    exit 1
fi


for file in "$dir"/*; do

    if [ -f "$file" ]; then
        base_name=$(basename "$file")
        extension="${base_name##*.}"

        new_file_name="$prefix$base_name$suffix.$extension"

        mv "$file" "$new_file_name"

        echo "$file Renamed to : $new_file_name"
    fi
done