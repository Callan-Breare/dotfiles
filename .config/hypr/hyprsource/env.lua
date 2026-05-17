-- Clipboard Management
hl.on("hyprland.start", function()
	hl.exec_cmd("rm -f ~/.cache/cliphist/db")
	hl.exec_cmd("wl-clip-persist --clipboard both")
	hl.exec_cmd("wl-paste --type text --watch cliphist store")
	hl.exec_cmd("wl-paste --type image --watch cliphist store")
	-- GTK settings via gsettings
	hl.exec_cmd("gsettings set org.gnome.desktop.interface gtk-theme 'Breeze'")
	hl.exec_cmd("gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'")
	hl.exec_cmd("gsettings set org.gnome.desktop.interface icon-theme 'Papirus'")
end)

-- Environment variables
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_THEME", "breeze_cursors")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("GDK_BACKEND", "wayland")

-- XDG Settings
hl.env("XDG_SESSION_DESKTOP", "hyprland")
hl.env("XDG_SESSION_TYPE", "hyprland")
hl.env("XDG_MENU_PREFIX", "plasma-")

-- QT Settings
hl.env("QT_QPA_PLATFORMTHEME", "kde")
hl.env("QT_STYLE_OVERRIDE", "Breeze")
hl.env("QT_QPA_PLATFORM", "wayland")

-- GTK Settings
hl.env("GTK_ICON_THEME", "Papirus")
hl.env("GTK_PREFER_DARK_THEME", "True")
hl.env("GTK_FONT_NAME", "Noto Sans 10")
hl.env("GTK_CURSOR_THEME", "Breeze")

