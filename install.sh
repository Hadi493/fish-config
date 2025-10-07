#!/bin/bash

# Enhanced Fish Shell Configuration Installer
set -e

FISH_CONFIG_DIR="$HOME/.config/fish"
BACKUP_DIR="$HOME/.config/fish_backup_$(date +%Y%m%d_%H%M%S)"

echo "Installing Enhanced Fish Shell Configuration..."

# Check if Fish is installed
if ! command -v fish &> /dev/null; then
    echo "Error: Fish shell is not installed."
    echo "Please install Fish shell first:"
    echo "  Ubuntu/Debian: sudo apt install fish"
    echo "  Arch: sudo pacman -S fish"
    echo "  macOS: brew install fish"
    exit 1
fi

# Create backup of existing config
if [ -d "$FISH_CONFIG_DIR" ]; then
    echo "Backing up existing Fish config to $BACKUP_DIR"
    mkdir -p "$BACKUP_DIR"
    cp -r "$FISH_CONFIG_DIR"/* "$BACKUP_DIR/" 2>/dev/null || true
    echo "Backup created at: $BACKUP_DIR"
fi

# Create Fish config directory
mkdir -p "$FISH_CONFIG_DIR"

# Install configuration files
echo "Installing Fish configuration..."
cp config.fish "$FISH_CONFIG_DIR/"
cp fish_variables "$FISH_CONFIG_DIR/"

# Install conf.d if it exists
if [ -d "conf.d" ]; then
    cp -r conf.d "$FISH_CONFIG_DIR/"
fi

echo "Installation complete!"
echo ""
echo "To start using the new configuration:"
echo "1. Restart your terminal or run: exec fish"
echo "2. Install a Nerd Font for best experience (recommended: Iosevka)"
echo ""
echo "Optional dependencies for full functionality:"
echo "  - tree: Enhanced directory listing"
echo "  - bat: Better cat with syntax highlighting"
echo "  - git: For git integration features"
echo ""
echo "Your old configuration is backed up at:"
echo "  $BACKUP_DIR"