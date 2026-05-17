-- Define variables
local terminal = "kitty"
local fileManager = "dolphin"
local menu = "wofi --conf=$HOME/.config/wofi/config"
local systemMonitor = "plasma-systemmonitor"
local mainMod = "SUPER"
local vol_change = "paplay /usr/share/sounds/freedesktop/stereo/audio-volume-change.oga &"

-- Session Control
hl.bind("SUPER, C", hl.dsp.window.kill())
hl.bind("SUPER, M", hl.dsp.quit())
hl.bind("SUPER, X", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER, J", hl.dsp.layoutmsg({ action = "togglesplit" }))

-- Launch Apps
hl.bind("SUPER, F", hl.dsp.exec_cmd("flatpak run one.ablaze.floorp"))
hl.bind("SUPER, S", hl.dsp.exec_cmd("steam &"))
hl.bind("SUPER, D", hl.dsp.exec_cmd("flatpak run com.discordapp.Discord"))
hl.bind("SUPER, A", hl.dsp.exec_cmd("vscodium &"))
hl.bind("SUPER, escape", hl.dsp.exec_cmd(systemMonitor))
hl.bind("SUPER, Q", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER, E", hl.dsp.exec_cmd(fileManager))

-- Launch Menus
hl.bind("SUPER, R", hl.dsp.exec_cmd(menu))
hl.bind("SUPER, I", hl.dsp.exec_cmd("$HOME/.config/hypr/scripts/waybar/load-waybar.sh"))
hl.bind("SUPER, V", hl.dsp.exec_cmd("cliphist list | wofi --dmenu --allow-images --conf=$HOME/.config/wofi/clipboard_config --style=default | cliphist decode | wl-copy"))

-- Volume control with flags: locked (l) and repeat (e)
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%- && " .. vol_change), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle && " .. vol_change), { locked = true })
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("$HOME/.config/hypr/scripts/media_control/volume_up.sh && " .. vol_change), { locked = true, repeating = true })

-- Lock Screen
hl.bind("SUPER, L", hl.dsp.exec_cmd("/usr/lib/kscreenlocker_greet --immediateLock"))

-- Screenshotting
hl.bind("SUPER SHIFT, S", hl.dsp.exec_cmd("grim -g \"$(slurp)\" - | tee $HOME/Pictures/Screenshots/screenshot_$(date +\"%Y|%m|%d_%H:%M:%S\").png | wl-copy"))
hl.bind("Print", hl.dsp.exec_cmd("grim - | tee $HOME/Pictures/Screenshots/screenshot_$(date +\"%Y|%m|%d_%H:%M:%S\").png | wl-copy"))

-- Move focus with arrow keys
hl.bind("SUPER, left", hl.dsp.movefocus({ direction = "l" }))
hl.bind("SUPER, right", hl.dsp.movefocus({ direction = "r" }))
hl.bind("SUPER, up", hl.dsp.movefocus({ direction = "u" }))
hl.bind("SUPER, down", hl.dsp.movefocus({ direction = "d" }))

-- Switch workspaces (1‑10)
for i = 1, 9 do
    hl.bind("SUPER, " .. i, hl.dsp.workspace({ workspace = i }))
end
hl.bind("SUPER, 0", hl.dsp.workspace({ workspace = 10 }))

-- Move window to workspace (1‑10) with Shift
for i = 1, 9 do
    hl.bind("SUPER SHIFT, " .. i, hl.dsp.movetoworkspace({ workspace = i }))
end
hl.bind("SUPER SHIFT, 0", hl.dsp.movetoworkspace({ workspace = 10 }))

-- Scroll through workspaces with Shift + right/left
hl.bind("SUPER SHIFT, right", hl.dsp.workspace({ workspace = "e+1" }))
hl.bind("SUPER SHIFT, left", hl.dsp.workspace({ workspace = "e-1" }))

-- Mouse bindings for moving or resizing windows, with the `mouse` flag set to true
hl.bind("SUPER, mouse:272", hl.dsp.movewindow(), { mouse = true })
hl.bind("SUPER, mouse:273", hl.dsp.resizewindow(), { mouse = true })