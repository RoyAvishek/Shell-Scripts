#! /bin/bash

# Problem:
# Write a shell script called "file_info.sh" that takes a file name as a command-line argument 
# and provides information about the file. The script should perform the following tasks:

# Check if the file exists. If it doesn't, display an error message and exit.
# Determine the file type (regular file, directory, symbolic link, etc.) and display it.
# Display the file size in bytes.
# Check if the file is readable, writable, and executable by the user.
# If the file is a regular text file, count the number of lines, words, and characters in the file and display the counts.
# If the file is a directory, display the number of files and subdirectories within it.


file="$1"

if [ ! -e "$file" ]; then
    echo "$file does not exist"
    exit 1
fi

if [ -f "$file" ]; then
    echo "$file is a regular file"

    # Display the file size in bytes.
    file_size=$(stat -f "%z" "$file")
    echo "File size: $file_size bytes"

    # Count lines, words, and characters in the file
    line_count=$(wc -l < "$file")
    word_count=$(wc -w < "$file")
    char_count=$(wc -m < "$file")
    echo -e "Lines:\t$line_count\nWords:\t$word_count\nChars:\t$char_count"

elif [ -d "$file" ]; then
    echo "$file is a directory"

    # Count the number of files and subdirectories within the directory
    file_count=$(find "$file" -type f | wc -l)
    dir_count=$(find "$file" -type d | wc -l)
    echo "Number of files: $file_count"
    echo "Number of subdirectories: $dir_count"

elif [ -L "$file" ]; then
    echo "$file is a symbolic link"

else
    echo "$file is of an unknown type"
fi

# Check file permissions
if [ -r "$file" ]; then
    echo "$file is readable by the user"
fi

if [ -w "$file" ]; then
    echo "$file is writable by the user"
fi

if [ -x "$file" ]; then
    echo "$file is executable by the user"
fi
