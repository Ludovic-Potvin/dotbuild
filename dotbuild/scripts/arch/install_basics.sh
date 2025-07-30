# Make git log work
sudo pacman -S less
sudo pacman -S --needed git base-devel

# Make the hyprland theme work
sudo pacman -S wofi
sudo pacman -S waybar
sudo pacman -S ttf-font-awesome
sudo pacman -S hyprpaper
sudo pacman -S hyprlock

# Extra
sudo pacman -S cava
sudo pacman -S fastfetch
sudo pacman -S fzf

# Bluetooth
sudo pacman -S blueman
sudo pacman -S bluez

# Apps
sudo pacman -S neovim
sudo pacman -S firefox
sudo pacman -S tmux
sudo pacman -S obsidian
sudo pacman -S spotify-launcher
sudo pacman -S nwg-look

# Utils
sudo pacman -S unzip

# Yay
git clone https://aur.archlinux.org/yay.git $HOME/yay
cd $HOME/yay
makepkg -si

# Nerdfont using yay
yay -S nerd-fonts-hack
