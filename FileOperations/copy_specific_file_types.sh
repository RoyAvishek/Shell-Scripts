#! /bin/bash

# Write a shell script that recursively finds all files with a specific extension in a directory and its subdirectories, and copies them to a specified destination directory.


src_dir="$1"
dest_dir="$2"
extension="$3"

# Create the destination directory if it doesn't exist
mkdir -p "$dest_dir"

# Find all files with the specified extension in the source directory and its subdirectories
find "$src_dir" -type f -name "*.$extension" -exec cp -t "$dest_dir" {} +

echo "Files with extension '$extension' copied to '$dest_dir'."