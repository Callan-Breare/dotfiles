#!/bin/bash

CACHE="$HOME/.cache/brightness"

# If cache is missing, grab real value ONCE and create it
if [[ -f "$CACHE" ]]; then
  value=$(cat "$CACHE")
else
  value=$(ddcutil getvcp 10 | sed -n 's/.*current value = *\([0-9]\+\),.*/\1/p')
  echo "$value" >"$CACHE"
fi

if ((value < 50)); then
  icon="🔅"
elif ((value < 100)); then
  icon="🔆"
else
  icon="🔆"
fi

echo "{\"text\": \"$value% $icon\", \"tooltip\": \"Monitor Brightness\"}"
