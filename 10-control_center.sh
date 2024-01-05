#!/usr/bin/env bash

echo "# Control Center"
echo "## Menu Bar Only"
echo "[Don't Show in Menu Bar] Spotlight (Doesn't work)"
defaults -currentHost write com.apple.Spotlight MenuItemHidden -bool false
echo "TODO Manually: [Show in Menu Bar] Time Machine"
echo "end Control Center"

# [ ] Wi-fi: Show in Menu Bar
# [Don't Show in Menu Bar] Bluetooth
# [ ] AirDrop: Don't Show in Menu Bar
# [ ] Focus: Don't Show when Active
# [ ] Stage Manager: Figure out later
# [ ] Screen Mirroring: Don't Show in Menu Bar
# [ ] Display: Don't Show in Menu Bar
# [ ] Sound: Don't Show In Menu Bar
# [ ] Now Playing: Don't Show in Menu Bar
# [ ] Accessibility Shortcuts: Show in Control Center
# [ ] Spotlight: Don't Show in Menu Bar
# [ ] Siri: Don't Show in Menu Bar
# [ ] Time Machine: Show in Menu Bar
