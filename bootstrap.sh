#!/usr/bin/env bash

# Version 3
echo "Checking for Command Line Tools for Xcode..."

if ! xcode-select -p &>/dev/null; then
  echo "Installing Command Line Tools for Xcode..."
  xcode-select --install
  sudo xcodebuild -license accept
fi

echo "Installing Rosetta..."
sudo softwareupdate --install-rosetta --agree-to-license

echo "Performing software updates..."
sudo softwareupdate --all --install --force

if ! command -v brew &>/dev/null; then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
  brew update
  brew bundle
  brew upgrade
fi

# echo "Checking Command Line Tools for Xcode"
# if [ ! -d "$(xcode-select -p)" ]; then
#   xcode-select --install
#   sudo xcodebuild -license accept
# fi
# sudo softwareupdate --install-rosetta --agree-to-license
# sudo softwareupdate --all --install --force

# if test ! "$(which brew)"; then
#   echo "Installing homebrew..."
#   ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#   eval "$(/opt/homebrew/bin/brew shellenv)"
#   brew update
#   brew bundle
#   brew upgrade
# fi

# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#version 1

#version 2
# Only run if the tools are not installed yet
# To check that try to print the SDK path
# xcode-select -p &>/dev/null
# if [ $? -ne 0 ]; then
#   echo "Command Line Tools for Xcode not found. Installing from softwareupdate…"
#   # This temporary file prompts the 'softwareupdate' utility to list the Command Line Tools
#   touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress
#   PROD=$(softwareupdate -l | grep "\*.*Command Line" | tail -n 1 | sed 's/^[^C]* //')
#   softwareupdate -i "$PROD" --verbose
# else
#   echo "Command Line Tools for Xcode have been installed."
# fi
