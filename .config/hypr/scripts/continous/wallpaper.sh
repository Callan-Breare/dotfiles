#!/bin/bash

# Define wallpaper directory
WALLPAPER_DIR="/home/cbreare/Pictures/WallPaper/"

# Get random wallpapers for each monitor
WALLPAPER_DP2=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

awww img --outputs eDP-1 --transition-type none "$WALLPAPER_DP2"

# Generate the hyprpaper config file
cat <<EOL >~/.config/hypr/hyprpaper.conf
# Hyprpaper Config

wallpaper = DP-1, $WALLPAPER_DP2

preload = $WALLPAPER_DP2
EOL
