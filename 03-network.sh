#!/usr/bin/env bash

echo "Firewall"
## Options
# [x] Enable Firewall (default: off)
#sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on &>/dev/null
defaults write /Library/Preferences/com.apple.alf globalstate 1 >/dev/null 2>&1

# [ ] Block all incoming connection (default: off)
# sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setblockall off &>/dev/null

# [x] Automatically allow built-in software to receive incoming connections (default: on)
# [x] Automatically allow downloaded signed software to receive incoming connections (default: on)
# [x] Enable stealth mode (default: off)
#sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setstealthmode on &>/dev/null
defaults write /Library/Preferences/com.apple.alf stealthenabled 1 >/dev/null 2>&1
echo "end Firewall"

# TODO: VPN for NextDNS
