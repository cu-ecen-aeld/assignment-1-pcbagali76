#!/bin/bash

# Check if the correct number of arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Error: Two arguments are required."
    echo "Usage: $0 <writefile> <writestr>"
    exit 1
fi

# Assign arguments to variables
writefile=$1
writestr=$2

# Create the directory path if it doesn't exist
mkdir -p "$(dirname "$writefile")"

# Write the string to the file, overwriting if it already exists
if ! echo "$writestr" > "$writefile"; then
    echo "Error: Could not create or write to the file '$writefile'."
    exit 1
fi

echo "File '$writefile' created successfully with the content: '$writestr'."
exit 0

