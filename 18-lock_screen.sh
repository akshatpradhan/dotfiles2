#!/usr/bin/env bash

echo "# Lock Screen"
echo "[For 20 mins] Start Screen Saver when inactive (default: 5 mins)"
defaults -currentHost write com.apple.screensaver idleTime -int 1200

echo "[For 30 mins] Turn display off on battery when inactive (default: 10 mins)"
sudo pmset -b displaysleep 30

echo "[For 30 mins] Turn display off on power adapter when inactive (default: 10 mins)"
sudo pmset -c displaysleep 30

echo "Doesn't work: [Immediately] Require password after screen saver begins or display is turned off (default: 5 mins)"
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0
