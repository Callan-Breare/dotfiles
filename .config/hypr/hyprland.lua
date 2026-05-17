hl.env("XDG_MENU_PREFIX", "arch-")
hl.env("HYPRLAND_CONFIG", "lua")

-- Use os.execute for shell commands
-- Good practice: Use exec-once for commands that should run only once at startup.
hl.on("hyprland.start", function()
	hl.exec_cmd("bash $HOME/.config/hypr/scripts/startup/start.sh")
	hl.exec_cmd("kbuildsycoca6 --noincremental")
end)
require("hyprsource.monitor")
require("hyprsource.env")
require("hyprsource.gen")
require("hyprsource.binds")
require("hyprsource.windowrules")
require("hyprsource.layouts")
require("hyprsource.device")
