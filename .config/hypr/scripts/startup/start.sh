#!/usr/bin/env bash

#Authentication Agent
exec /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
#exec /usr/bin/kdeconnectd &
#initialise idle lockout agent
#exec hypridle &

# initialise wallpaper daemon
swww-daemon &

# setting wallpaper
bash $HOME/.config/hypr/scripts/continous/wallpaper.sh
#exec hyprpaper &

#network manager
nm-applet --indicator &

#panels
$HOME/.config/hypr/scripts/waybar/load-waybar.sh

# notification daemon
dunst &
# bluetooth manager
exec blueman-applet &
#usb device manager
udiskie --tray --no-automount &
