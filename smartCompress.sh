#!/bin/bash

# Take in command line arguments
source=$1
destination=$2

# Get the directory of the script
script_dir="$(dirname "$0")"

# Construct the path to exclusions.txt relative to the script's directory
exclusions_file="$script_dir/exclusions.txt"

# Initialize an empty string to hold the concatenated lines
extensions=""

# Check if the exclusions file exists
if [ ! -f "$exclusions_file" ]; then
    echo "File $exclusions_file does not exist."
    exit 1
fi

extensions=$(cat "$exclusions_file")

echo "Excluding these filetypes from compression: $extensions";

# Corrected zip command
zip -r -8 -n "$extensions" "$destination" "$source"
