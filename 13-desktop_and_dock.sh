#!/usr/bin/env bash

echo "# Desktop & Dock"
echo "## Dock"
defaults write com.apple.dock tilesize -int 36
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock largesize -int 72
echo "[Left] Position on screen"
defaults write com.apple.dock orientation -string "left"
echo "[x] Minimize windows into application icon (default: off)"
defaults write com.apple.dock minimize-to-application -bool true
echo "[ ] Show suggested and recent apps in Dock (default: on)"
defaults write com.apple.dock show-recents -bool false
echo "[Always] Prefer tabs when opening documents"
defaults write NSGlobalDomain AppleWindowTabbingMode -string "always"
echo "[Start Screen Saver] Top Left Corner (default: off)"
defaults write com.apple.dock wvous-tl-corner -int 5
#defaults write com.apple.dock wvous-tl-modifier -int 0
# dock icons of hidden (⌘ + H) applications are translucent (default: off)
defaults write com.apple.dock showhidden -bool true
echo "end Desktop & Dock"
