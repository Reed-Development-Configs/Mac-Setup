#!/usr/bin/env bash

# Reference:
#      https://macos-defaults.com/screenshots/location.html#set-to-desktop-default-value

############
############

## DOCK
defaults write com.apple.dock "orientation" -string "bottom" && defaults write com.apple.dock "tilesize" -int "36" && defaults write com.apple.dock "autohide" -bool "true" && defaults write com.apple.dock "show-recents" -bool "false" && killall Dock

## SCREENSHOTS
mkdir ../../../screenshots
defaults write com.apple.screencapture "location" -string "~/Documents/screenshots" && killall SystemUIServer

## FINDER
defaults write com.apple.finder "AppleShowAllFiles" -bool "true" && defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv" && killall Finder

## DATE
defaults write com.apple.menuextra.clock "DateFormat" -string "\"EEE d MMM HH:mm:ss\""
