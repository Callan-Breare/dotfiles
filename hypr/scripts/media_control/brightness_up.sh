#!/bin/bash

# File to store current brightness level
BRIGHTNESS_FILE=~/.current_brightness

# Default color temperature (no warm tint)
COLOR_TEMP=6500

# Check if the brightness file exists
if [ ! -f "$BRIGHTNESS_FILE" ]; then
  # If not, create it and set initial brightness to 50%
  echo "0.5" >"$BRIGHTNESS_FILE"
fi

# Read the current brightness value
CURRENT_BRIGHTNESS=$(cat "$BRIGHTNESS_FILE")

# Increase brightness by 0.05 (5%)
NEW_BRIGHTNESS=$(echo "$CURRENT_BRIGHTNESS + 0.05" | bc)

# Cap the brightness at 1.0 (100%)
if (($(echo "$NEW_BRIGHTNESS > 1.0" | bc -l))); then
  NEW_BRIGHTNESS=1.0
fi

# Save the new brightness value
echo "$NEW_BRIGHTNESS" >"$BRIGHTNESS_FILE"

# Apply the new brightness using gammastep
gammastep -O $COLOR_TEMP -b $NEW_BRIGHTNESS:$NEW_BRIGHTNESS
