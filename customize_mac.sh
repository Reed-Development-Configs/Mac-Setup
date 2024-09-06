#!/usr/bin/env bash

# Reference:
#      https://macos-defaults.com/screenshots/location.html#set-to-desktop-default-value

#######################################
# Configure macOS settings
#######################################

## DOCK settings
defaults write com.apple.dock "orientation" -string "bottom" \
    && defaults write com.apple.dock "tilesize" -int "36" \
    && defaults write com.apple.dock "autohide" -bool "true" \
    && defaults write com.apple.dock "show-recents" -bool "false" \
    && killall Dock

## SCREENSHOTS settings
# Create the directory if it doesn't exist
mkdir -p "${screenshots_dir}"

# Define the desired screenshots directory
screenshots_dir="${HOME}/Documents/screenshots"

# Set the screencapture location preference
defaults write com.apple.screencapture "location" -string "${screenshots_dir}" \
    && killall SystemUIServer

## FINDER settings
defaults write com.apple.finder "AppleShowAllFiles" -bool "true" \
    && defaults write com.apple.finder "ShowPathbar" -bool "true" \
    && defaults write com.apple.finder "ShowStatusBar" -bool "true" \
    && defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv" \
    && killall Finder

## DATE format
defaults write com.apple.menuextra.clock "DateFormat" -string "\"EEE d MMM HH:mm:ss\""

# Print completion message
echo "macOS customization completed."
