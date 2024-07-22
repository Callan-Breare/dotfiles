#!/usr/bin/env bash

# initialise wallpaper daemon
swww-daemon &

# setting wallpaper
bash $HOME/.config/hypr/scripts/continous/wallpaper.sh

#network manager
nm-applet --indicator &

#panels
$HOME/.config/hypr/scripts/waybar/load-waybar.sh

# notification daemon
dunst &
