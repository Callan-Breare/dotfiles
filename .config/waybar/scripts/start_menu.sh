#!/bin/bash
hyprctl eval 'hl.dispatch(hl.dsp.exec_cmd("wofi --conf="..os.getenv("HOME").."/.config/wofi/start_config --style="..os.getenv("HOME").."/.config/wofi/start_config.css", { float = true, move = { 2, 38 } }))'
