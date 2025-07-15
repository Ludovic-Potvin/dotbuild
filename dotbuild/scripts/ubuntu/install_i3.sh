sudo apt-get install i3
sudo apt-get install i3-wm dunst i3lock i3status suckless-tools i3-gaps
sudo apt-get install hsetroot rxvt-unicode xsel lxappearance scrot

# Define source and target paths
SOURCE_DIR="$HOME/personal/dotfiles/i3/"
TARGET_DIR="$HOME/.config/i3"

# Create the target directory if it doesn't exist
mkdir -p "$TARGET_DIR"

# Copy the i3 config file
cp "$SOURCE_DIR/config" "$TARGET_DIR/config"

# Copy the startup script
cp "$SOURCE_DIR/startup.sh" "$TARGET_DIR/startup.sh"

# Make sure the startup script is executable
chmod +x "$TARGET_DIR/startup.sh"

echo "i3 config and startup.sh copied to $TARGET_DIR"
