#!/usr/bin/env bash

# [ ] Slightly dim the display on batter (default: on)
sudo pmset -b lessbright 0
sudo pmset -c lessbright 0

# [x] Prevent automatic sleeping on power adapter when the display is off (default: off)
sudo pmset -c sleep 1

# [Never] Wake for network access
sudo pmset -a womp 0 2>/dev/null
