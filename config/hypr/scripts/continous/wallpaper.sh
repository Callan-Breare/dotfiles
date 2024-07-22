#!/bin/bash

# Directory where your wallpapers are stored
wallpaper_dir="$HOME/Pictures/WallPaper/"

# Get a random wallpaper from the directory
wallpaper_dp2=$(find "$wallpaper_dir" -type f | shuf -n 1)
wallpaper_dp3=$(find "$wallpaper_dir" -type f | shuf -n 1)

# Set the wallpaper using eww. Each monitor has a different wallpaper
swww img --outputs DP-2 --transition-type none "$wallpaper_dp2"
swww img --outputs DP-3 --transition-type none "$wallpaper_dp3"
