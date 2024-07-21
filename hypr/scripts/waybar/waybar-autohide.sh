#!/bin/bash

# Function to check if Waybar is visible
is_waybar_visible() {
  waybar_pid=$(pgrep -x waybar)
  if [ -n "$waybar_pid" ]; then
    waybar_visible=$(xdotool getactivewindow getwindowpid | grep -q "$waybar_pid")
    return $?
  else
    return 1
  fi
}

# Function to toggle Waybar visibility
toggle_waybar_visibility() {
  if is_waybar_visible; then
    echo '{"command": "toggle"}' | waybar-msg
  fi
}

# Monitor active window changes and toggle Waybar visibility
while true; do
  active_window=$(xdotool getactivewindow)
  if [ "$active_window" != "$last_active_window" ]; then
    last_active_window="$active_window"
    if [ "$active_window" = "0x0" ]; then
      toggle_waybar_visibility
    else
      toggle_waybar_visibility
    fi
  fi
  sleep 1
done
