#!/bin/bash

CURRENT=$(ddcutil getvcp 10 | grep -Po '(?<=current value = )\d+')
NEW=$((CURRENT + 2))
if [ $NEW -gt 100 ]; then NEW=100; fi
#ddcutil setvcp 10 $NEW

echo "$NEW"
