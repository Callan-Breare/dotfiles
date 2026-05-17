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

-- Animation controls
hl.curve("default", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1 } } })
hl.curve("quick", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })

-- Default springs
hl.curve("easy", { type = "spring", mass = 1, stiffness = 71.2633, dampening = 15.8273644 })

hl.animation({ leaf = "global", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "border", enabled = true, speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows", enabled = true, speed = 4.79, spring = "easy" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.1, spring = "easy", style = "popin 87%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.49, bezier = "linear", style = "popin 87%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade", enabled = true, speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers", enabled = true, speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4, bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.5, bezier = "linear", style = "fade" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 1.21, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "zoomFactor", enabled = true, speed = 7, bezier = "quick" })

