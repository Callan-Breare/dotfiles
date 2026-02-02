#!/bin/bash

########### IMPORTANT ###########
# This is not a finished script #
# There is no error checking    #
# This will probably break      #
# Only run if you're lazy       #
#################################

echo "Installing packages"

yay -Syu stow kitty zsh python neovim \
  waybar hyprland dunst uwsm thunar \
  wofi xdg-desktop-portal-hyprland \
  qt5-wayland qt6-wayland grim slurp \
  udiskie bluez-utils gparted btop bc \
  gammastep ttf-firacode-nerd wlogout \
  swww wl-clip-persist wl-clipboard cliphlist \
  polkit-kde-agent --needed

echo "Backing up existing config files"

#rename .config directories to old to retain original configuration
mv $HOME/.config/dunst $HOME/.config/dunst-old
mv $HOME/.config/hypr $HOME/.config/hypr-old
mv $HOME/.config/kitty $HOME/.config/kitty-old
mv $HOME/.config/nvim $HOME/.config/nvim-old
mv $HOME/.config/waybar $HOME/.config/waybar-old
mv $HOME/.config/wlogout $HOME/.config/wlogout-old
mv $HOME/.config/wofi $HOME/.config/wlogout-old
mv $HOME/.config/nwg-dock-hyprland $HOME/.config/nwg-dock-hyprland-old

#rename zsh files to retain original configuration
mv $HOME/.zshrc $HOME/.zshrc-old
mv $HOME/.p10k.zsh $HOME/.p10k.zsh-old

echo "Backup complete
Creating symlinks for new dotfiles"

/bin/stow .

echo "Install completed, please log out and back in"
