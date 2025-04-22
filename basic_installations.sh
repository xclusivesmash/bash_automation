#!/usr/bin/env bash
# author: Siphamandla Matshiane
# date: 05 April 2025

sudo apt update
# basic development packages
sudo apt install vim gcc git curl zsh xclip -y

# git configurations
git config --global user.name "xclusivesmash"
git config --global user.email "sbumatshiane916@gmail.com"

# zsh configuration
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# autosuggestions plugin in zsh
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
# make the changes immediate
source ~/.zshrc
# make zsh default
chsh -s $(which zsh)
