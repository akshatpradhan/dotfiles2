#!/usr/bin/env bash

echo "# Passwords"
echo "Doesn't work unless safari is first started?"
# [ ] AutoFill Passwords and Passkeys (default: on)
defaults write com.apple.Safari AutoFillPasswords -bool false
