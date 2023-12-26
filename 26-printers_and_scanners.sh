#!/usr/bin/env bash
echo "# Printers & Scanners"
echo "## Expand save panel by default" # Works
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

echo "## Expand print panel by default" # Works
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

echo "# Automatically quit printer app once the print jobs complete" # ToTest
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true
