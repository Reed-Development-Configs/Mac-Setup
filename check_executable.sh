#!/usr/bin/env bash

# Source the file list
# This includes the array of file paths defined in file_list.sh
source ./files_list.sh

# Function to check if a file is executable, and if not, make it executable
# $1: Path to the file to check and make executable
make_executable() {
    if [ ! -x "$1" ]; then
        # If the file is not executable, make it executable
        echo "Making $1 executable..."
        chmod +x "$1"
    else
        # If the file is already executable, inform the user
        echo "$1 is already executable."
    fi
}

# Iterate over each file in the FILES array
# For each file, check if it is executable, and make it executable if it's not
for file in "${FILES[@]}"; do
    make_executable "$file"
done
