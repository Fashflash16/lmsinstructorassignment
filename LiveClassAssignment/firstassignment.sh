#!/bin/bash
#First assignment script
# Description: Checks if a regular file exists at the given path.
# Usage: ./firstassignment.sh <filename>

# --- 1. Input Validation ---
# Check if a filename argument was provided
if [ -z "$1" ]; then
    echo "Error: Please provide a filename as an argument."
    echo "Try Uisng this Format: ./firstassignment.sh <yourfilename>"
    exit 1 # Exit with an error status (1 indicates failure)
fi
# Store the provided filename in a variable for easier readability
filename="$1"

# The -f operator checks if:
# a) The file exists, AND
# b) It is a regular file (not a directory, symbolic link, etc.)
if [ -f "$filename" ]; then
    echo "Yes: The file '$filename' exists and is a regular file."
    exit 0 # Exit with a success status (0 indicates success)
else
    echo "PLEASE NOTE: The file '$filename' does NOT exist or is not a regular file."
    exit 1 # Exit with an error status
fi