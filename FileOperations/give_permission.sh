#!/bin/bash

# Write a shell script that sets read, write, and execute permissions for a specific user on a given file.

read -p "Enter the file path: " file
read -p "Enter the username: " username

# Set read, write, and execute permissions for the specified user on the file
sudo setfacl -m u:"$username":rwx "$file"

# Verify if the user has the required permissions
if sudo -u "$username" [ -r "$file" ] && sudo -u "$username" [ -w "$file" ] && sudo -u "$username" [ -x "$file" ]; then
    echo "Permissions set successfully for user: $username"
else
    echo "Failed to set permissions for user: $username"
fi