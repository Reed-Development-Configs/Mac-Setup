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
## Github
brew install gh

## IDE
brew install neovim
brew install --cask visual-studio-code
brew install --cask cursor

## Languages
brew install python3

## Workflow
brew install --cask iterm2
brew install nvm

## API
brew install --cask paw

## Database
brew install redis
brew install --cask postico
brew install postgresql@14

# Communication
brew install --cask slack
brew install --cask zoom
brew install --cask discord

# Note Taking
brew install --cask notion
brew install --cask notion-calendar

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

# Microsoft Suite
mas install 462058435 # Microsoft Excel