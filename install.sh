#!/bin/bash

echo "Installing packages"

sudo pacman -S stow kitty neovim waybar wlogout wofi dunst swww --needed

echo "Backing up existing config files"

#rename .config directories to old to retain original configuration
mv $HOME/.config/dunst $HOME/.config/dunst-old
mv $HOME/.config/hypr $HOME/.config/hypr-old
mv $HOME/.config/kitty $HOME/.config/kitty-old
mv $HOME/.config/nvim $HOME/.config/nvim-old
mv $HOME/.config/waybar $HOME/.config/waybar-old
mv $HOME/.config/wlogout $HOME/.config/wlogout-old
mv $HOME/.config/wofi $HOME/.config/wlogout-old

#rename zsh files to retain original configuration
mv $HOME/.zshrc $HOME/.zshrc-old
mv $HOME/.p10k.zsh $HOME/.p10k.zsh-old

echo "Backup complete
Creating symlinks for new dotfiles"

/bin/stow .

echo "Install completed, please log out and back in"
