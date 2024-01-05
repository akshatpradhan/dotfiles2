#!/usr/bin/env bash
echo "# Rectangle"
echo "[x] Launch on login"
defaults write com.knollsoft.Rectangle launchOnLogin -bool true
echo "[ ] Check for updates automatically"
defaults write com.knollsoft.Rectangle SUEnableAutomaticChecks -bool false
