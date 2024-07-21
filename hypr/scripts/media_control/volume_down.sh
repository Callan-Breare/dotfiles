# volume_down.sh
#!/bin/bash
/usr/bin/pactl set-sink-volume @DEFAULT_SINK@ -5%

