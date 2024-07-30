echo "Installing Dependancies"

sudo pacman -S --needed --noconfirm waybar hyprland qt5ct qt6ct dunst swww gtk3

echo "Copying Config Files"

cd config

#current_dir = $(pwd)
#if ["$current_dir" == "$]
#Need to do a check to make sure we are in the correct dir to copy from

sudo rsync -aAXvH . $HOME/.config/.

echo "Completed, please reboot"
