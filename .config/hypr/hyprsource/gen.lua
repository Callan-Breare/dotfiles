hl.config({
	-- Input settings
	input = {
		kb_layout = "gb",
		kb_variant = "",
		kb_model = "",
		kb_options = "",
		kb_rules = "",
		numlock_by_default = true,
		follow_mouse = 1,
		touchpad = {
			natural_scroll = false,
		},
		sensitivity = 0,
	},

	-- General settings
	general = {
		gaps_in = 0, -- was 5 originally
		gaps_out = 0, -- was 20 originally
		border_size = 2,
		col = {
			active_border = "rgba(120,120,120,1)",
			inactive_border = "rgba(090909ff)",
		},
		layout = "dwindle",
		allow_tearing = false,
	},

	-- Decoration settings (blur, rounding)
	decoration = {
		rounding = 5,
		blur = {
			enabled = false,
			size = 3,
			passes = 1,
		},
	},

	-- Animation settings
	animations = {
		enabled = true,
	},

	-- Miscellaneous settings
	misc = {
		force_default_wallpaper = 1,
		disable_autoreload = false,
	},
})

hl.device({
	name = "epic-mouse-v1",
	sensitivity = -0.5,
})

-- Animation style
hl.curve("quick", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.05 } } })

-- Animation objects
hl.animation({ leaf = "global", enabled = true, speed = 10, bezier = "quick" })
hl.animation({ leaf = "border", enabled = true, speed = 5.39, bezier = "quick" })
hl.animation({ leaf = "windows", enabled = true, speed = 4.79, bezier = "quick" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.1, bezier = "quick", style = "popin 87%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.49, bezier = "quick", style = "popin 87%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1.73, bezier = "quick" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.46, bezier = "quick" })
hl.animation({ leaf = "fade", enabled = true, speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers", enabled = true, speed = 3.81, bezier = "quick" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4, bezier = "quick", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.5, bezier = "quick", style = "fade" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 1.79, bezier = "quick" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.39, bezier = "quick" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 1.94, bezier = "quick", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 1.21, bezier = "quick", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 1.94, bezier = "quick", style = "fade" })
hl.animation({ leaf = "zoomFactor", enabled = true, speed = 7, bezier = "quick" })
