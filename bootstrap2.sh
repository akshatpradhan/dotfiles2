#!/usr/bin/env fish
fish_add_path "/opt/homebrew/bin"
fish_add_path "/opt/homebrew/sbin"
brew install fisher

# Download these fonts, then drag them into fontbook
# https://github.com/IlanCosman/tide#fonts
# Configure Terminal > Profiles -> Font > Meslo LGS NF Regular 11 and linespacing 1.15

brew update
brew bundle
brew upgrade

# Ruby
#echo 'status --is-interactive; and ~/.rbenv/bin/rbenv init - fish | source' >>~/.config/fish/config.fish
cp fish/config.fish ~/.config/fish/config.fish
set -Ux PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin

rbenv install 3.3.0
rbenv global 3.3.0
pyenv install 3.11.3
pyenv global 3.11.3
## fish_add_path /opt/homebrew/opt/ruby/bin

# Fisher Plugins
# fisher install IlanCosman/tide@v5
# fisher install jethrokuan/z
# fisher install jorgebucaran/autopair.fish
# fisher meaningful-ooo/sponge
# fish_update_completions
