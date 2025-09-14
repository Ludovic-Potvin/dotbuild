# Make git log work
sudo pacman -S less
sudo pacman -S --needed git base-devel

# Make the hyprland theme work
sudo pacman -S wofi
sudo pacman -S waybar
sudo pacman -S ttf-font-awesome
sudo pacman -S hyprpaper
sudo pacman -S hyprlock
sudo pacman -S hyprshot
sudo pacman -S hyprpicker

# Extra
sudo pacman -S cava
sudo pacman -S fastfetch
sudo pacman -S fzf
sudo pacman -S ghostscript
sudo pacman -S zoxide
sudo pacman -S luarocks
sudo pacman -S lazygit
sudo pacman -S fd
sudo pacman -S wl-clipboard
sudo pacman -S nmap

# Dev
sudo pacman -S python-pip
sudo pacman -S python-poetry
yay -S pyenv

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
sudo pacman -S discord
sudo pacman -S libreoffice-still
sudo pacman -S jupyter-notebook
sudo pacman -S ollama

sudo pacman -S r
sudo yay -S rstudio-desktop-bin
sudo yay -S localsend

# Utils
sudo pacman -S unzip
sudo pacman -S tlp
sudo systemctl enable tlp.service

# Yay
git clone https://aur.archlinux.org/yay.git $HOME/yay
cd $HOME/yay
makepkg -si

# Nerdfont using yay
yay -S nerd-fonts-hack
