#!/usr/bin/env bash

check_root_access() {
  if ! sudo -n true 2>/dev/null; then
    printf "This script needs administrative privileges to run.\n"
    printf "Please enter your password or ensure you've recently authenticated with 'sudo'.\n"
    sudo -v

    if ! sudo -n true 2>/dev/null; then
      printf "\nUnable to gain administrative privileges. Exiting now.\n"
      exit 1
    fi
    printf "\n"
  fi
}

check_root_access

# sudo -nv 2>>/dev/null
# if [ $? -ne 0 ]; then
#   printf "Black Hat macOS Config requires root access.\\n"
#   printf "Please enter your password, or run 'sudo -v' first.\\n"
#   sudo -v

#   #Validate we can sudo now
#   if [ $? -ne 0 ]; then
#     printf "\\n"
#     printf "Still not root. Exiting.\\n"
#     exit
#   fi
#   printf "\\n"
# fi
