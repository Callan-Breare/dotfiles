-- Define variables
local terminal = "kitty"
local fileManager = "dolphin"
local menu = "wofi --conf=$HOME/.config/wofi/config"
local systemMonitor = "plasma-systemmonitor"
local vol_change = "paplay /usr/share/sounds/freedesktop/stereo/audio-volume-change.oga &"

-- Session Control
hl.bind("SUPER + C", hl.dsp.window.close())
hl.bind("SUPER + M", hl.dsp.exec_cmd("hyprshutdown"))
hl.bind("SUPER + X", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER + J", hl.dsp.layout("togglesplit"))

-- Launch Apps
hl.bind("SUPER + F", hl.dsp.exec_cmd("flatpak run one.ablaze.floorp"))
hl.bind("SUPER + S", hl.dsp.exec_cmd("steam"))
hl.bind("SUPER + D", hl.dsp.exec_cmd("flatpak run com.discordapp.Discord"))
hl.bind("SUPER + A", hl.dsp.exec_cmd("vscodium"))
hl.bind("SUPER + escape", hl.dsp.exec_cmd(systemMonitor))
hl.bind("SUPER + Q", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER + E", hl.dsp.exec_cmd(fileManager))

-- Launch Menus
hl.bind("SUPER + R", hl.dsp.exec_cmd(menu))
hl.bind("SUPER + I", hl.dsp.exec_cmd("$HOME/.config/hypr/scripts/waybar/load-waybar.sh"))
hl.bind("SUPER + V", hl.dsp.exec_cmd("cliphist list | wofi --dmenu --allow-images --conf=$HOME/.config/wofi/clipboard_config --style=default | cliphist decode | wl-copy"))

-- Volume control
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%- && " .. vol_change),
	{ locked = true, repeating = true }
)
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle && " .. vol_change),
	{ locked = true }
)
hl.bind("XF86AudioRaiseVolume",	hl.dsp.exec_cmd("$HOME/.config/hypr/scripts/media_control/volume_up.sh && " .. vol_change),
	{ locked = true, repeating = true }
)

-- Lock Screen
hl.bind("SUPER + L", hl.dsp.exec_cmd("/usr/lib/kscreenlocker_greet --immediateLock"))

-- Screenshotting
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd('grim -g "$(slurp)" - | tee $HOME/Pictures/Screenshots/screenshot_$(date +"%Y|%m|%d_%H:%M:%S").png | wl-copy'))
hl.bind("Print", hl.dsp.exec_cmd('grim - | tee $HOME/Pictures/Screenshots/screenshot_$(date +"%Y|%m|%d_%H:%M:%S").png | wl-copy'))

-- Move focus – already correct
hl.bind("SUPER + left", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + right", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + up", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + down", hl.dsp.focus({ direction = "down" }))

-- Switch workspaces
for i = 1, 9 do
	hl.bind("SUPER + " .. i, hl.dsp.focus({ workspace = i }))
end
hl.bind("SUPER + 0", hl.dsp.focus({ workspace = 10 }))

-- Move window to workspace
for i = 1, 9 do
	hl.bind("SUPER + SHIFT + " .. i, hl.dsp.window.move({ workspace = i }))
end
hl.bind("SUPER + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))

-- Scroll through workspaces with Shift + left/right
hl.bind("SUPER + SHIFT + right", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + SHIFT + left", hl.dsp.focus({ workspace = "e-1" }))

-- Mouse bindings
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })
