#!/bin/bash

CACHE="$HOME/.cache/brightness"
new_brightness=70
ddcutil setvcp 10 $new_brightness
echo "$new_brightness" >"$CACHE"
