#!/usr/bin/env bash

# Function to install Homebrew if not installed
install_homebrew() {
    if ! command -v brew &>/dev/null; then
        # If Homebrew is not found, install it
        echo "Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    else
        # If Homebrew is already installed, inform the user
        echo "Homebrew is already installed."
    fi
}

# Source the file list
# This includes the array of file paths defined in file_list.sh
source ./files_list.sh

# Main function to orchestrate the installation process
main() {
    # First, ensure all necessary scripts are executable
    chmod +x check_executable.sh
    ./check_executable.sh
    
    # Iterate over each file in the FILES array and execute it
    for file in "${FILES[@]}"; do
        "$file"
    done
    
    # Inform the user that the setup process is complete
    echo "Setup completed!"
}

# Run the main function to start the installation process
main
