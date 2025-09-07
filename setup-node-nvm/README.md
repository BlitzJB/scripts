# Node.js Setup Script

This script automates the installation of Node Version Manager (nvm) and the latest LTS (Long Term Support) version of Node.js on Ubuntu systems.

## What This Script Does

1. **Updates package list** - Ensures your system has the latest package information
2. **Installs curl** - Required for downloading nvm
3. **Downloads and installs nvm** - Node Version Manager for managing multiple Node.js versions
4. **Configures environment** - Sets up proper shell configuration for nvm
5. **Installs Node.js LTS** - Downloads and installs the latest stable LTS version
6. **Sets default version** - Configures the LTS version as the default Node.js version
7. **Verifies installation** - Confirms everything is working correctly

## Prerequisites

- Ubuntu-based system (tested on Ubuntu 18.04+)
- Internet connection
- Sudo privileges (for installing system packages)

## Usage

### Option 1: Direct execution from GitHub (Recommended)

Run the script directly without downloading:

```bash
curl -fsSL https://raw.githubusercontent.com/BlitzJB/scripts/main/setup-nvm-node/setup-nvm-node.sh | bash
```

### Option 2: Download and run manually

```bash
# Download the script
curl -fsSL https://raw.githubusercontent.com/BlitzJB/scripts/main/setup-nvm-node/setup-nvm-node.sh -o setup-nvm-node.sh

# Make it executable
chmod +x setup-nvm-node.sh

# Run the script
./setup-nvm-node.sh
```

### Option 3: Clone repository and run locally

```bash
git clone https://github.com/BlitzJB/scripts.git
cd scripts/setup-nvm-node
chmod +x setup-nvm-node.sh
./setup-nvm-node.sh
```

## Post-Installation

After the script completes:

1. **Restart your terminal** or run:
   ```bash
   source ~/.bashrc
   ```

2. **Verify the installation**:
   ```bash
   nvm --version
   node --version
   npm --version
   ```

3. **Using nvm** (basic commands):
   ```bash
   # List installed versions
   nvm list
   
   # Install a specific version
   nvm install 18.17.0
   
   # Switch to a specific version
   nvm use 18.17.0
   
   # Install and switch to latest LTS
   nvm install --lts
   nvm use --lts
   
   # Set default version
   nvm alias default 18.17.0
   ```

## What Gets Installed

- **nvm**: Latest stable version (v0.39.3 as of this script)
- **Node.js**: Latest LTS version (automatically detected)
- **npm**: Comes bundled with Node.js

## Troubleshooting

**Issue**: `nvm: command not found` after installation
- **Solution**: Restart your terminal or run `source ~/.bashrc`

**Issue**: Permission denied errors
- **Solution**: Make sure you have sudo privileges for installing system packages

**Issue**: curl command fails
- **Solution**: Check your internet connection and ensure GitHub is accessible

**Issue**: Script fails during nvm installation
- **Solution**: Try running the script again, or manually install nvm following the [official instructions](https://github.com/nvm-sh/nvm#installing-and-updating)

## About nvm

Node Version Manager (nvm) allows you to:
- Install multiple Node.js versions
- Switch between versions easily
- Set different versions for different projects
- Always have access to the latest LTS releases

This is particularly useful for developers working on multiple projects that require different Node.js versions.

## Security Note

This script downloads and executes code from the internet. Always review scripts before running them on your system. You can view the script content at: https://raw.githubusercontent.com/BlitzJB/scripts/refs/heads/main/setup-node-nvm/script.sh