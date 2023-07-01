#!/bin/bash

# Write a shell script that reads a CSV file and extracts specific columns, filtering the rows based on certain criteria, and outputs the result to a new file.

#!/bin/bash

input_file="input.csv"
output_file="output.csv"

# Read the input file line by line
while IFS=',' read -r col1 col2 col3
do
    # Perform some processing on the columns
    new_col1="Modified: $col1"
    new_col2=$(echo "$col2" | tr '[:lower:]' '[:upper:]')
    new_col3=$((col3 * 2))

    # Write the modified columns to the output file
    echo "$new_col1,$new_col2,$new_col3" >> "$output_file"
done < "$input_file"
