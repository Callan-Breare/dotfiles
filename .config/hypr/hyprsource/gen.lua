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
        gaps_in = 0,        -- was 5 originally
        gaps_out = 0,       -- was 20 originally
        border_size = 2,
        col.active_border = "rgba(120,120,120,1)",
        col.inactive_border = "rgba(090909ff)",
        layout = "dwindle",
        allow_tearing = false,
    },

    -- Decoration settings (blur, rounding, shadows commented)
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
        enabled = true,     -- "yes" becomes true
        bezier = "myBezier, 0.05, 0.9, 0.1, 1.05",
        animation = {
            "windows, 1, 5, default",
            "windowsOut, 1, 7, default, popin 80%",
            "border, 1, 10, default",
            "borderangle, 1, 8, default",
            "fade, 1, 7, default",
            "workspaces, 1, 6, default",
        },
    },


    -- Miscellaneous settings
    misc = {
        force_default_wallpaper = 1,   -- 0 or 1
        disable_autoreload = false,
    },

    -- Per-device input config (example)
    device = {
        {
            name = "epic-mouse-v1",
            sensitivity = -0.5,
        },
    },

    -- Render settings
    render = {
        direct_scanout = false,
    },
})