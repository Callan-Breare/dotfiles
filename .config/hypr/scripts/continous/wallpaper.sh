#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/WallPaper/"
mkdir -p "$WALLPAPER_DIR"

BING_JSON=$(curl -s "https://www.bing.com/HPImageArchive.aspx?format=js&idx=0&n=1&mkt=en-US")
IMG_URL="https://www.bing.com$(echo "$BING_JSON" | jq -r '.images[0].url')"

# Extract image description and make pretty for filename
IMG_DESC=$(echo "$BING_JSON" | jq -r '.images[0].copyright' | sed 's/[^a-zA-Z0-9]/_/g')
EXT="${IMG_URL##*.}"
EXT="${EXT%%\?*}"

IMG_FILE="$WALLPAPER_DIR/${IMG_DESC}.${EXT}"

if [ ! -f "$IMG_FILE" ]; then
  curl -s -o "$IMG_FILE" "$IMG_URL"
fi

awww img --outputs DP-2 --transition-type none "$IMG_FILE"
