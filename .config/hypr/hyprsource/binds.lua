-- Define variables
local terminal = "kitty"
local fileManager = "dolphin"
local menu = "wofi --conf=$HOME/.config/wofi/config"
local systemMonitor = "plasma-systemmonitor"
local mainMod = "SUPER"
local vol_change = "paplay /usr/share/sounds/freedesktop/stereo/audio-volume-change.oga &"

-- Session Control
hl.bind(mainMod .. ", C", "killactive")
hl.bind(mainMod .. ", M", "exit")
hl.bind(mainMod .. ", X", "togglefloating")
hl.bind(mainMod .. ", J", "layoutmsg, togglesplit")

-- Launch Apps
hl.bind(mainMod .. ", F", "exec, flatpak run one.ablaze.floorp")
hl.bind(mainMod .. ", S", "exec, steam &")
hl.bind(mainMod .. ", D", "exec, flatpak run com.discordapp.Discord")
hl.bind(mainMod .. ", A", "exec, vscodium &")
hl.bind(mainMod .. ", escape", "exec, " .. systemMonitor)
hl.bind(mainMod .. ", Q", "exec, " .. terminal)
hl.bind(mainMod .. ", E", "exec, " .. fileManager)

-- Launch Menus
hl.bind(mainMod .. ", R", "exec, " .. menu)
hl.bind(mainMod .. ", I", "exec, $HOME/.config/hypr/scripts/waybar/load-waybar.sh")
hl.bind(mainMod .. ", V", "exec, cliphist list | wofi --dmenu --allow-images --conf=$HOME/.config/wofi/clipboard_config --style=default | cliphist decode | wl-copy")

-- Volume control with flags: l (locked) and e (repeat)
hl.bind("l, e, , XF86AudioLowerVolume", "exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 2%- && " .. vol_change)
hl.bind("l, , XF86AudioMute", "exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle && " .. vol_change)
hl.bind("l, e, , XF86AudioRaiseVolume", "exec, $HOME/.config/hypr/scripts/media_control/volume_up.sh && " .. vol_change)

-- Lock Screen
hl.bind(mainMod .. ", L", "exec, /usr/lib/kscreenlocker_greet --immediateLock")

-- Screenshotting
hl.bind(mainMod .. " SHIFT, S", "exec, grim -g \"$(slurp)\" - | tee $HOME/Pictures/Screenshots/screenshot_$(date +\"%Y|%m|%d_%H:%M:%S\").png | wl-copy")
hl.bind(", PRINT", "exec, grim - | tee $HOME/Pictures/Screenshots/screenshot_$(date +\"%Y|%m|%d_%H:%M:%S\").png | wl-copy")

-- Move focus with arrow keys
hl.bind(mainMod .. ", left", "movefocus, l")
hl.bind(mainMod .. ", right", "movefocus, r")
hl.bind(mainMod .. ", up", "movefocus, u")
hl.bind(mainMod .. ", down", "movefocus, d")

-- Switch workspaces (1‑10)
for i = 1, 9 do
    hl.bind(mainMod .. ", " .. i, "workspace, " .. i)
end
hl.bind(mainMod .. ", 0", "workspace, 10")

-- Move window to workspace (1‑10) with Shift
for i = 1, 9 do
    hl.bind(mainMod .. " SHIFT, " .. i, "movetoworkspace, " .. i)
end
hl.bind(mainMod .. " SHIFT, 0", "movetoworkspace, 10")

-- Scroll through workspaces with Shift + right/left
hl.bind(mainMod .. " SHIFT, right", "workspace, e+1")
hl.bind(mainMod .. " SHIFT, left", "workspace, e-1")

-- Mouse bindings (move/resize)
hl.bindm(mainMod .. ", mouse:272", "movewindow")
hl.bindm(mainMod .. ", mouse:273", "resizewindow")