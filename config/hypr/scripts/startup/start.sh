#!/usr/bin/env bash

#Authentication Agent to Interact with KDE applications
exec /usr/lib/polkit-kde-authentication-agent-1 &

#initialise idle lockout agent
exec hypridle &

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
