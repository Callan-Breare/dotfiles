#!/bin/bash

# Define wallpaper directory
WALLPAPER_DIR="/media/Drives/DS2/HOME/Media/Pictures/WallPaper/"

# Get random wallpapers for each monitor
WALLPAPER_DP2=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

swww img --outputs DP-2 --transition-type none "$WALLPAPER_DP2"

# Generate the hyprpaper config file
cat <<EOL >~/.config/hypr/hyprpaper.conf
# Hyprpaper Config

wallpaper = DP-2, $WALLPAPER_DP2

preload = $WALLPAPER_DP2
EOL
