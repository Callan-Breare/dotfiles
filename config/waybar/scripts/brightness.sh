#!/bin/bash

BRIGHTNESS=$(ddcutil getvcp 10 | grep -Po '(?<=current value = )\d+')
echo "{\"text\": \"$BRIGHTNESS%\", \"tooltip\": \"Monitor Brightness\"}"
