# volume_mute.sh
#!/bin/bash
/usr/bin/pactl set-sink-mute @DEFAULT_SINK@ toggle

