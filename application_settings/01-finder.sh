#!/usr/bin/env bash

echo "Finder Settings"
### General
# [ ] Hard disks (default: off)
# defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
# [ ] External disks (default: on)
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
# [ ] CDs, DVDs, and iPods (default: on)
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
# [ ] Connected Servers (default: off)
# defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false
# [x] Open folders in tabs instead of new windows (default: on)
# defaults write com.apple.finder FinderSpawnTab -bool true
# [Recent] New Finder windows show: (default: Recent)
# defaults write com.apple.finder NewWindowTarget -string "PfHm"
# defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"

echo "Tags (Needs to be done manually)"
echo "[ ] Uncheck all the colors"

### Sidebar
echo "Sidebar: Needs to be done manually because it isn't scriptable"

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

### Advanced
# [x] Show all filename extensions (default: off)
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"
# [ ] Show warning before changing an extension (default: on)
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
# [ ] Show warning before removing from iCloud Drive (default: on)
defaults write com.apple.finder FXEnableRemoveFromICloudDriveWarning -bool false
# [ ] Show warning before emptying the trash (default: on)
defaults write com.apple.finder WarnOnEmptyTrash -bool true
# [ ] Remove items from the Trash after 30 days (default: off)
# defaults write com.apple.finder FXRemoveOldTrashItems -bool false
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

### Don't enable beause if affects viewing of videos and images on external drives
# Disable .DS_Store files on network volumes (default: off)
#defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
# Disable .DS_Store files on USB volumes (default: off)
#defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

echo "end Finder Settings"
