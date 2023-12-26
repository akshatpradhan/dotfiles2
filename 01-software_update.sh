#!/usr/bin/env bash

echo "Software Update"
echo "[x] Install macOS updates"
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticallyInstallMacOSUpdates -bool true
echo "[x] Install application updates from the App Store"
sudo defaults write /Library/Preferences/com.apple.commerce AutoUpdate -bool true
echo "end Software Update"
