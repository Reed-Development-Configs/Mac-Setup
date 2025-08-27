#!/usr/bin/env bash
set -e # exit script immediately if any command fails

echo "Prepping Package Install..."

# INSTALL APPLICATION DOWNLOAD SOURCES ########################################
###############################################################################
## Homebrew
if ! command -v brew &>/dev/null; then
    echo "Installing Homebrew..."

    if /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"; then
        echo "Homebrew installation completed."
    else
        echo "Error: Homebrew installation failed!" >&2
        exit 1
    fi
else
    echo "Homebrew is already installed."
fi

## Mac App Store CLI
echo "Installing Mac App Store CLI..."
brew install mas 

# INSTALL PACKAGES w/ HOMEBREW || MAS #########################################
###############################################################################
echo "Installing Applications..."

# DEVELOPMENT TOOLS ##########################################################
## Github CLI
brew install gh

## NVM (Node Version Manager) - There can be issues installing NVM with homebrew.
##                              It's recommended to install it with the Github Script.
### Find the latest version tag from the NVM GitHub repository
NVM_VERSION=$(curl --silent "https://api.github.com/repos/nvm-sh/nvm/releases/latest" | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')

### Check if the version tag was found
if [ -z "$NVM_VERSION" ]; then
    echo "Error: Could not find the latest NVM version tag. Please check your internet connection." >&2
    exit 1
fi

echo "Latest NVM version is $NVM_VERSION. Starting installation."

### Run the installation script using the latest version
if ! curl -o- "https://raw.githubusercontent.com/nvm-sh/nvm/$NVM_VERSION/install.sh" | bash; then
    echo "Error: NVM installation failed!" >&2
    exit 1
fi

## IDEs
brew install neovim
brew install --cask visual-studio-code
brew install --cask cursor

## Terminals
brew install tmux
brew install --cask ghostty # (replaced iTerm2)

## API
brew install --cask postman # (replaced Paw - purchased by RapidAPI)

## Containers
brew install --cask docker

## Languages
brew install python3

## Database
brew install redis
brew install postgresql@17
brew install --cask postico
brew install --cask db-browser-for-sqlite

## AI
brew install ollama

# GENERAL MACOS APPLICATIONS ##################################################
## MacOS Monitor
brew install --cask stats

## Screen Blue Light Management
brew install --cask flux-app

## Password Management
brew install --cask 1password

# Browsers
brew install --cask google-chrome

## Communication
brew install --cask slack
brew install --cask zoom
brew install --cask discord
brew install --cask whatsapp

## Email
### V1 - Postbox - purchased by eM Client and shut down sales/operations/development/support
###                as of December 22, 2024
### brew install --cask postbox

### V2 - Thunderbird - is favored for its **open source** nature, extensive customization
###                    through add-ons, strong privacy features, and multi-platform support
### brew install --cask thunderbird

### V3 - eM Client - eM Client is praised for its modern interface, intuitive design, and user-friendly setup
brew install --cask emclient

### V4 (School - IU Bloomington - Luddy School of Informatics, Computing, and Engineering)
brew install --cask microsoft-outlook

## Note Taking
brew install --cask obsidian

## Dictation
brew install --cask superwhisper

## Calculator
brew install --cask numi

## Wallpapers
mas install 1284863847 # Unsplash Wallpapers

## Video Conversion
mas install 717545086 # 1-Click Video Converter

## Finance
brew install --cask ledger-live

## Music
brew install --cask spotify # Spotify
mas install 1440013765 # Elpy

## Video Games
brew install --cask steam