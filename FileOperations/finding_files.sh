#!/bin/bash

# Finding Files: Write a script that searches for files with a specific extension in a directory and its subdirectories.

directory="$1"
extension="$2"

# Validate the input directory
if [ ! -d "$directory" ]; then
  echo "Error: Invalid directory"
  exit 1
fi

# Use find command to search for files with the specified extension
# and print their absolute paths
find "$directory" -type f -name "*.$extension" -print