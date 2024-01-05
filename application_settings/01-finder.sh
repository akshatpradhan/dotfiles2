#!/usr/bin/env bash

echo "Finder Settings"
### General
# [ ] External disks (default: on)
defaults write com.apple.finder "ShowExternalHardDrivesOnDesktop" -bool "false"
# [ ] CDs, DVDs, and iPods (default: on)
defaults write com.apple.finder "ShowRemovableMediaOnDesktop" -bool "false"

echo "Tags (Needs to be done manually)"
echo "[ ] Uncheck all the colors"

### Sidebar
echo "Sidebar: Uncheck and reorder position to the following:"

echo "[x] Recents"
echo "[x] AirDrop"
echo "[ ] Applications"
echo "[x] Desktop"
echo "[x] Documents"
echo "[x] Downloads"
echo "[ ] Movies"
echo "[ ] Music"
echo "[ ] Pictures"
echo "[x] akshatpradhan"
echo "[x] iCloud Drive"
echo "[x] Shared"
echo "[x] akshatpradhan's MacBook Air"
echo "[x] Hard disks"
echo "[x] External disks"
echo "[x] CDs, DVDs, and iOS Devices"
echo "[x] Cloud Storage"
echo "[x] Bonjour computers"
echo "[x] Connected servers"
echo "[ ] Recent Tags"

### Advanced
# [x] Show all filename extensions (default: off)
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"
# [ ] Show warning before changing an extension (default: on)
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
# [ ] Show warning before removing from iCloud Drive (default: on)
defaults write com.apple.finder FXEnableRemoveFromICloudDriveWarning -bool false
# [ ] Show warning before emptying the trash (default: on)
defaults write com.apple.finder WarnOnEmptyTrash -bool false
# [x] Keep folders on top in windows when sorting by name (default: off)
defaults write com.apple.finder _FXSortFoldersFirst -bool true
# [x] Keep folders on top on desktop (default: off)
defaults write com.apple.finder _FXSortFoldersFirstOnDesktop -bool true
# [Search the Current Folder] When performing a search (default: Search This Mac)
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# [x] View -> Show Path Bar (default: off)
defaults write com.apple.finder "ShowPathbar" -bool "true"

# [x] View -> Show Status Bar (default: off)
defaults write com.apple.finder "ShowStatusBar" -bool "false"

# Set the default view style for all folders to List View
defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv"

# Show the ~/Library folder
chflags nohidden ~/Library

# Show the /Volumes folder
sudo chflags nohidden /Volumes

# Automatically open a new Finder window when a volume is mounted
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

# disable the "are you sure you want to open this application?" dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false
### Don't enable beause if affects viewing of videos and images on external drives
# Disable .DS_Store files on network volumes (default: off)
#defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
# Disable .DS_Store files on USB volumes (default: off)
#defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

echo "end Finder Settings"
