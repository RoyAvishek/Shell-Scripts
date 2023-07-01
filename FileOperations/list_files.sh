#!/bin/bash

# Write a shell script that lists all files in a directory and its subdirectories, sorted by size in descending order.

dir="$1"

du -ah "$dir" | sort -rh