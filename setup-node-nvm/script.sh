#!/bin/bash

# Exit on any error
set -e

echo "Setting up nvm and Node.js LTS on Ubuntu..."

# Update package list
echo "Updating package list..."
sudo apt update

# Install curl if not already installed
echo "Installing curl..."
sudo apt install -y curl

# Download and install nvm
echo "Installing nvm..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# Export nvm path and reload bash profile
echo "Loading nvm..."
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Reload the shell
source ~/.bashrc 2>/dev/null || source ~/.bash_profile 2>/dev/null || true

# Install Node.js LTS
echo "Installing Node.js LTS..."
nvm install --lts

# Use the LTS version
echo "Setting LTS as default..."
nvm use --lts
nvm alias default lts/*

# Verify installation
echo "Verifying installation..."
echo "Node.js version: $(node --version)"
echo "npm version: $(npm --version)"
echo "nvm version: $(nvm --version)"

echo "Setup complete! Node.js LTS is now installed and ready to use."
echo "You may need to restart your terminal or run 'source ~/.bashrc' to use nvm in new sessions."