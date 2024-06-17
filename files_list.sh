#!/usr/bin/env bash

# List of files to check
# This array contains the paths to the scripts that need to be executed during setup.
# Modify this list if you add more setup scripts or change their locations.
FILES=(
    "./setup_dotfiles.sh"
    "./install_packages.sh"
    "./customize_mac.sh"
)
