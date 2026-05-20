#!/bin/bash
if systemctl --user is-active --quiet hyprsunset.service; then
  echo "{\"text\": \"🌙\", \"tooltip\": \"Night Light On\", \"class\": \"active\"}"
else
  echo "{\"text\": \"☀️\", \"tooltip\": \"Night Light Off\", \"class\": \"inactive\"}"
fi
