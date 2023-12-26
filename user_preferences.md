
[x] Enable Siri


# Display the Finder "Quit" option (default: off) (Questioning)
defaults write com.apple.finder "QuitMenuItem" -bool "true"

# Remove toolbar title rollover delay (Didn't Care)
defaults write NSGlobalDomain "NSToolbarTitleViewRolloverDelay" -float "0"

# Show Hidden Files in the Finder (Questioning)
defaults write com.apple.finder "AppleShowAllFiles" -bool "true"

# Display full POSIX path as Finder window title (Diddn't like)
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true


# I think this is already set: Show folder icon before title in the title bar (Didn't like)
defaults write com.apple.universalaccess "showWindowTitlebarIcons" -bool "true"

### Untested
# Show item info near icons on the desktop and in other icon views
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist

# REDUNDANT: Show item info to the right of the icons on the desktop
/usr/libexec/PlistBuddy -c "Set DesktopViewSettings:IconViewSettings:labelOnBottom false" ~/Library/Preferences/com.apple.finder.plist

# Enable snap-to-grid for icons on the desktop and in other icon views
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

# Increase grid spacing for icons on the desktop and in other icon views
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:gridSpacing 100" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:gridSpacing 100" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:gridSpacing 100" ~/Library/Preferences/com.apple.finder.plist

# Increase the size of icons on the desktop and in other icon views
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:iconSize 80" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:iconSize 80" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:iconSize 80" ~/Library/Preferences/com.apple.finder.plist


















### Feedback Assistant
# Do not autogather large files when submitting a feedback report.
defaults write com.apple.appleseed.FeedbackAssistant "Autogather" -bool "false" 







# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
brew doctor


brew install fish
echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells 
#sudo sh -c 'echo /opt/homebrew/bin/fish >> /etc/shells'
fish_add_path "/opt/homebrew/bin"
brew install fisher
# Download these fonts, then drag them into fontbook
https://github.com/IlanCosman/tide#fonts
# Configure Terminal > Profiles -> Font > Meslo LGS NF Regular 11 and linespacing 1.15
fisher install IlanCosman/tide@v5
fisher install jethrokuan/z
fisher install jorgebucaran/autopair.fish
fisher meaningful-ooo/sponge

### For CSC220
touch ~/.config/fish/conf.d/abbrs.fish
echo "abbr -a cd /Users/akshatpradhan/Documents/courses/csc220/www" >> ~/.config/fish/conf.d/abbrs.fish
### END


fisher install rbenv/fish-rbenv <<something funky going on around here, look at fisher list
ilancosman/tide@v5
jethrokuan/z
jorgebucaran/autopair.fish
meaningful-ooo/sponge
might need to do fish_add_path /opt/homebrew/opt/ruby/bin

rbenv install 3.2.1
brew install xz pyenv
set -Ux PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin
vi ~/.config/fish/config.fish
Add this line: pyenv init - | source
pyenv install 3.7.16
## For CSC220
sudo mkdir /usr/local/bin
sudo ln /Users/akshatpradhan/.pyenv/shims/python /usr/local/bin/python3
brew install lighttpd
# Change lighttpd.conf, modules.conf
brew services start lighttpd
## END for CSC220

Install Penumbra theme for visual studio and enable Auto Dark and Autolight with Penumbra using preferred dark and light theme
# Install Python Extension from Microsoft



# App Store
next-dns

1password
microsoft-word 
microsoft-excel 
microsoft-powerpoint 
microsoft-onenote

scrivener




## Chrome Extensions
ublock origin
OneTab
uBlacklist
Raindrop.io
SwiftRead
Screenity
OneTab

Key Jump keyboard navigation
Reddit Enhancement Suite



Directories and folders that are important
/Users/akshatpradhan/Music
/Users/akshatpradhan/Dropbox
/Users/akshatpradhan/.ssh