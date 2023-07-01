#! /bin/bash

# Write a shell script that takes a file name as a command-line argument and creates a new file with the same content but with a ".bak" extension.

# Check if a file name is provided as a command-line argument
if [ $# -eq 0 ]; then
    echo "Please provide a file name as a command-line argument."
    exit 1
fi

# Store the provided file name
filename=$1

# Extract the base name of the file
basename=$(basename "$filename")

# Remove the file extension
extension="${basename##*.}"
filename_without_extension="${basename%.*}"

# Check if the file exists
if [ -f "$filename" ]; then
    # Create a backup file with the same name but without the file extension and with a ".bak" extension
    cp "$filename" "${filename_without_extension}.bak"
    echo "Backup file created: ${filename_without_extension}.bak"
else
    echo "File does not exist: $filename"
    exit 1
fi