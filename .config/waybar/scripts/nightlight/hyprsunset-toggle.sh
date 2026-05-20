#!/usr/bin/env bash

SERVICE="hyprsunset.service"

if systemctl --user is-active --quiet "$SERVICE"; then
  systemctl --user stop "$SERVICE"
else
  systemctl --user start "$SERVICE"
fi

$HOME/.config/waybar/scripts/hyprsunset.sh
