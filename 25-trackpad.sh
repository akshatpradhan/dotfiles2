#!/usr/bin/env bash
echo "# Trackpad"
echo "## Point & Click"
echo "[fast] Tracking speed"
defaults write NSGlobalDomain com.apple.trackpad.scaling -float 3.0
echo "[ ] Tap to click"
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool false

echo "## More Gestures"
echo "[Swipe Down with Three Fingers] App Expose"
defaults write com.apple.dock showMissionControlGestureEnabled -bool true
defaults write com.apple.dock showAppExposeGestureEnabled -bool true
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerVertSwipeGesture -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerVertSwipeGesture -int 2
defaults -currentHost write NSGlobalDomain com.apple.trackpad.threeFingerVertSwipeGesture -int 2
defaults write com.apple.AppleMultitouchTrackpad TrackpadFourFingerVertSwipeGesture -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerVertSwipeGesture -int 2
defaults -currentHost write NSGlobalDomain com.apple.trackpad.fourFingerVertSwipeGesture -int 2
