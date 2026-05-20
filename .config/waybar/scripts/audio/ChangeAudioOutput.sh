#!/bin/bash

# List all audio output devices for debugging purposes
#wpctl status

# Check if device name is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <partial or full device name>"
  exit 1
fi

# Get the device name passed by the user
DEVICE_NAME="$1"

# Find the device ID corresponding to the provided name (partial or full match)
DEVICE_ID=$(wpctl status | grep -A10 "Sinks:" | grep -i "$DEVICE_NAME" | sed -E 's/[^0-9]*([0-9]+).*/\1/')

# Check if the device ID was found
if [ -z "$DEVICE_ID" ]; then
  echo "Error: Could not find device with name matching '$DEVICE_NAME'"
  exit 1
fi

# Set the default audio output device
wpctl set-default "$DEVICE_ID"

# Move all currently playing audio streams to the new default device
for stream in $(wpctl status | grep '│' | grep -oP '(?<=\().*?(?=\))' | grep '^stream'); do
  wpctl move "$stream" "$DEVICE_ID"
done

echo "Audio output device changed to device $DEVICE_NAME ($DEVICE_ID)"
