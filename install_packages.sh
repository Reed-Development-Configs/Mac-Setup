#!/usr/bin/env bash

echo "Prepping Package Install..."
# Install Homebrew if not installed
if ! command -v brew &>/dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed."
fi

# Mac App Store CLI
brew install mas 

# Install packages using Homebrew
echo "Installing packages..."

# SSH
## brew install openssh

# MacOS Monitor
brew install --cask stats

# Development
## IDE
brew install --cask visual-studio-code

## Languages
### ...python

## Workflow
brew install --cask iterm2
brew install nvm

## Database
brew install redis
brew install postgresql@14
brew install --cask paw

# Communication
brew install --cask slack
brew install --cask zoom
brew install --cask discord

# Note Taking
brew install --cask notion

# Password Management
brew install --cask 1password

# Browsers
brew install --cask google-chrome

# Music
brew install --cask spotify
mas install 1440013765 # Elpy

# Email
brew install --cask postbox

# General
mas install 1284863847 # Unsplash Wallpapers