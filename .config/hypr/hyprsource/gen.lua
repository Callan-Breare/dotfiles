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
hl.curve("feel", { type = "bezier", points = { { 0, 1 }, { 0, 1 } } })
hl.animation({ leaf = "global", enabled = true, speed = 5, bezier = "feel" })
hl.animation({ leaf = "windows", enabled = true, speed = 5, bezier = "feel", style = "popin 80%" })
hl.animation({ leaf = "layers", enabled = false })
hl.animation({ leaf = "workspaces", enabled = true, speed = 5, bezier = "feel" })
