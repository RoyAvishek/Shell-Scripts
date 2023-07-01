#!/bin/bash

# Write a shell script that deletes all files in a directory that have not been accessed for a certain number of days.

dir="$1"
days="$2"

if [ $# -ne 2 ]; then
    echo "Usage: $0 <dir_name> <No. of days old>"
    exit 1
fi

if [ ! -d "$dir" ]; then
    echo "Please provide correct dir "
    exit 1
fi

find "$dir" -type f -mtime +$days -delete

echo "Files in $dir that haven't been modified in $days days have been deleted."