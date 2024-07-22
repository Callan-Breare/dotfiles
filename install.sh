echo "Installing Dependancies"

sudo pacman -S --needed --no-confirm waybar hyprland qt5ct qt6ct dunst swww plasman-meta gtk3

echo "Copying Config Files"
sudo rsync -aAXvH . /$HOME/.config/

echo "Completed, please reboot"
