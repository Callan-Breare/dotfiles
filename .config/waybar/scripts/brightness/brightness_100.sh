#!/bin/bash

CACHE="$HOME/.cache/brightness"
new_brightness=100
ddcutil setvcp 10 $new_brightness
echo "$new_brightness" >"$CACHE"
