-- Clipboard Management (run once at startup)
os.execute("rm -f ~/.cache/cliphist/db")
os.execute("wl-clip-persist --clipboard both")
os.execute("wl-paste --type text --watch cliphist store")
os.execute("wl-paste --type image --watch cliphist store")

-- General Settings
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_THEME", "breeze_cursors")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("GDK_BACKEND", "wayland")

-- XDG Settings
-- hl.env("XDG_CURRENT_DESKTOP", "hyprland")
hl.env("XDG_SESSION_DESKTOP", "hyprland")
hl.env("XDG_SESSION_TYPE", "hyprland")
hl.env("XDG_MENU_PREFIX", "plasma-")

-- QT Settings (using KDE)
hl.env("QT_QPA_PLATFORMTHEME", "kde")
-- hl.env("QT_QPA_PLATFORMTHEME", "qt5ct")
hl.env("QT_STYLE_OVERRIDE", "Breeze")
hl.env("QT_QPA_PLATFORM", "wayland")

-- GTK Settings
-- hl.env("GTK_THEME", "Breeze")
hl.env("GTK_ICON_THEME", "Papirus")
-- hl.env("GTK_ICON_THEME", "Tela")
hl.env("GTK_PREFER_DARK_THEME", "True")
hl.env("GTK_FONT_NAME", "Noto Sans 10")
hl.env("GTK_CURSOR_THEME", "Breeze")

-- GTK settings applied via gsettings (run once)
os.execute("gsettings set org.gnome.desktop.interface gtk-theme 'Breeze'")
os.execute("gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'")
os.execute("gsettings set org.gnome.desktop.interface icon-theme 'Papirus'")