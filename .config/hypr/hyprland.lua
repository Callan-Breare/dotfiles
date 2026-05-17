-- Execute startup scripts (exec-once)
hl.env("XDG_MENU_PREFIX", "arch-")
hl.env("HYPRLAND_CONFIG", "lua") -- Example of setting an env var

-- Use os.execute for shell commands
os.execute("bash $HOME/.config/hypr/scripts/startup/start.sh")
os.execute("kbuildsycoca6 --noincremental")
os.execute("dbus-update-activation-environment --all")

-- Load all your modular configurations
require("hyprsource.monitor")
require("hyprsource.env")
require("hyprsource.gen")
require("hyprsource.binds")
require("hyprsource.windowrules")
require("hyprsource.layouts")
