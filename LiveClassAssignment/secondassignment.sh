#!/bin/bash
# Second assignment script
#this is the second assignment fo Live class
# Description: Counts the number of regular files in a specified directory.
# Usage: ./secondassignment.sh <absolute_path_to_directory>

# Check if a directory path argument was provided
if [ -z "$1" ]; then
    echo "Error: Please provide a filename as an argument."
    echo "Try Uisng this Format: ./secondassignment.sh <yourfilename>"
    exit 1 # Exit with an error status (1 indicates failure)
fi

# Store the provided path in a variable for clarity
folder_path="$1"

# Check if the provided path actually exists and is a directory
if [ ! -d "$folder_path" ]; then
    echo "Error: '$folder_path' is not a valid directory or does not exist."
    exit 1 # Exit with an error status
fi


file_count=$(find "$folder_path" -maxdepth 1 -type f | wc -l)

echo "There are $file_count regular files in the directory: '$folder_path'."
exit 0 # Exit with a success status (0 indicates success)
# Note: This script assumes that the user has permission to read the directory and its contents.
# If you want to count files recursively, remove the '-maxdepth 1' option from the 'find' command.