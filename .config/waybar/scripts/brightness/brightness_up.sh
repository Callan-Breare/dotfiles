#!/bin/bash

CACHE="$HOME/.cache/brightness"
current_brightness=$(ddcutil getvcp 10 | sed -n 's/.*current value = *\([0-9]\+\),.*/\1/p')
new_brightness=$((current_brightness + 10))
if [ $new_brightness -gt 100 ]; then new_brightness=100; fi
ddcutil setvcp 10 $new_brightness
echo "$new_brightness" >"$CACHE"
