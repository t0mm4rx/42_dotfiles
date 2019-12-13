#!/bin/sh

# Install and config of omzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
[ -f ~/.zshrc ] && mv ~/.zshrc ~/.zshrc.backup
cp ./.zshrc ~/
touch ~/.hushlogin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Config of vim
[ -f ~/.vimrc ] && mv ~/.vimrc ~/.vimrc.backup
cp ./.vimrc ~/

# Config of iTerm2
cp ./Chalkboard.itermcolors ~/
