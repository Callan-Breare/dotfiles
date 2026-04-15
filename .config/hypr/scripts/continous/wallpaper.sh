#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/WallPaper/"
mkdir -p "$WALLPAPER_DIR"

# Fetch Bing data
BING_JSON=$(curl -s "https://www.bing.com/HPImageArchive.aspx?format=js&idx=0&n=1&mkt=en-US")
IMG_URLBASE=$(echo "$BING_JSON" | jq -r '.images[0].urlbase')
IMG_DESC=$(echo "$BING_JSON" | jq -r '.images[0].copyright' | sed 's/[^a-zA-Z0-9]/_/g')

# Try UHD first, fallback to 1080p
UHD_URL="https://www.bing.com${IMG_URLBASE}_UHD.jpg"
UHD_FILE="$WALLPAPER_DIR/${IMG_DESC}_UHD.jpg"

echo "Attempting UHD download..."
if curl --fail -s -o "$UHD_FILE" "$UHD_URL"; then
  FINAL_IMG="$UHD_FILE"
  echo "UHD version downloaded."
else
  echo "UHD not available, falling back to 1920x1080."
  HD_URL="https://www.bing.com${IMG_URLBASE}_1920x1080.jpg"
  HD_FILE="$WALLPAPER_DIR/${IMG_DESC}_1920x1080.jpg"
  curl -s -o "$HD_FILE" "$HD_URL"
  FINAL_IMG="$HD_FILE"
fi

# Apply wallpaper
awww img --outputs DP-2 --transition-type none "$FINAL_IMG"
