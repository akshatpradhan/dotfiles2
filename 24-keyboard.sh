#!/usr/bin/env bash

echo "# Keyboard"
echo "[Modifier Keys] Switch Control and Capslock"
keyboard_id="$(ioreg -c AppleEmbeddedKeyboard -r | grep -Eiw "VendorID|ProductID" | awk '{ print $4 }' | paste -s -d'-\n' -)-0"
defaults -currentHost write -g com.apple.keyboard.modifiermapping.${keyboard_id} -array-add "
<dict>
  <key>HIDKeyboardModifierMappingDst</key>\
  <integer>30064771300</integer>\
  <key>HIDKeyboardModifierMappingSrc</key>\
  <integer>30064771129</integer>\
  <key>HIDKeyboardModifierMappingDst</key>\
  <integer>30064771129</integer>\
  <key>HIDKeyboardModifierMappingSrc</key>\
  <integer>30064771300</integer>\
</dict>
"

echo "[Fast] Key repeat Rate"
defaults write NSGlobalDomain KeyRepeat -int 2

echo "[Short] Delay until repeat"
defaults write NSGlobalDomain InitialKeyRepeat -int 15
# end Keyboard
