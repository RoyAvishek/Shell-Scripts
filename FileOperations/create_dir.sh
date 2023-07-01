#!/bin/bash

# Write a shell script that prompts the user to enter a directory name and creates a new directory with that name if it does not already exist.

read -p "Enter the dir name: " dirname

if [ ! -d "$dirname" ]; then
    mkdir -p "$dirname"
fi