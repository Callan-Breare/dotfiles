#!/bin/bash

# Get the current volume level
CURRENT_VOLUME=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $2*100}')

# Check if the current volume is less than 100%
if (($(echo "$CURRENT_VOLUME < 100" | bc -l))); then
	# Increase the volume by 2%
	wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%+
else
	# Set the volume to 100% if it's greater than or equal to 100%
	wpctl set-volume @DEFAULT_AUDIO_SINK@ 100%
fi
