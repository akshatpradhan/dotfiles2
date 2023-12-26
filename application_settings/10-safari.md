
### Safari
# Show full website URL in Safari address bar
defaults write com.apple.safari "ShowFullURLInSmartSearchField" -bool "true"

# Privacy: don’t send search queries to Apple
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# Disable AutoFill