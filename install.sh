echo "Installing Dependancies"

sudo pacman -S --needed --noconfirm waybar hyprland qt5ct qt6ct dunst swww gtk3

echo "Copying Config Files"
cd config
sudo rsync -aAXvH . /$HOME/.config/.

echo "Completed, please reboot"
