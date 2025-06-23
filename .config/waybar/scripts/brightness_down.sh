#!/bin/bash

CURRENT=$(ddcutil getvcp 10 | grep -Po '(?<=current value = )\d+')
NEW=$((CURRENT - 10))
if [ $NEW -lt 0 ]; then NEW=0; fi
#ddcutil setvcp 10 $NEW

echo "$NEW"
