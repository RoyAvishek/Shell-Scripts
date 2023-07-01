#!/bin/bash

# Write a shell script that reads a text file line by line and counts the occurrences of a specific word in the file.

file="$1"
word="$2"

count=$(grep -o -w "$word" "$file" | wc -l)
echo "The word '$word' occurs $count times in the file."





# The grep command provides several flags that allow you to modify its behavior and perform more specific searches. Here are some commonly used flags with grep:

# -i or --ignore-case: Ignores case distinctions in both the search pattern and input files.
# -v or --invert-match: Inverts the match, displaying lines that do not match the pattern.
# -r or --recursive: Recursively searches files in directories and subdirectories.
# -l or --files-with-matches: Only displays the names of files that contain matching lines, not the actual matching lines.
# -n or --line-number: Displays line numbers along with the matching lines.
# -w or --word-regexp: Matches whole words only, rather than matching the pattern as a substring.
# -c or --count: Only displays the count of matching lines, without showing the actual lines.
# -E or --extended-regexp: Enables extended regular expression syntax.
# These are just a few examples, and there are more flags available with grep. You can refer to the grep manual page (man grep) for a complete list of flags and their descriptions.