#!/usr/bin/env fish

# Fonts for Tide
# https://github.com/IlanCosman/tide#fonts
open fonts/mesloLGS_NF_Regular.ttf
open fonts/mesloLGS_NF_Bold.ttf
open fonts/mesloLGS_NF_Italic.ttf
open fonts/mesloLGS_NF_Bold_Italic.ttf

eval "$(/opt/homebrew/bin/brew shellenv)"
fish_add_path "/opt/homebrew/bin"
fish_add_path "/opt/homebrew/sbin"
brew install fisher

brew update
brew bundle
brew upgrade

cp fish/config.fish ~/.config/fish/config.fish
set -Ux PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin

rbenv install 3.3.0
rbenv global 3.3.0
pyenv install 3.11.3
pyenv global 3.11.3

# Fisher Plugins
fisher install IlanCosman/tide@v5
fisher install jethrokuan/z
fisher install jorgebucaran/autopair.fish
fisher meaningful-ooo/sponge
fish_update_completions
