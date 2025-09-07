# Scripts Repository

Welcome to the Scripts Repository! This repository contains a collection of utility scripts designed to automate various tasks and setups. Currently, it houses scripts for setting up PostgreSQL databases using Docker and Node.js development environments.

## Repository Structure

```
scripts/
│
├── setup-postgres-vm/
│   ├── setup.sh
│   └── README.md
│
├── setup-nvm-node/
│   ├── setup-nvm-node.sh
│   └── README.md
│
└── README.md (this file)
```

## Available Scripts

### 1. PostgreSQL Setup Script

**Location**: `setup-postgres-vm/setup.sh`

This script automates the process of setting up a virtual machine with Docker and two PostgreSQL databases (one for production and one for development).

**Key Features**:
- Installs Docker and Docker Compose
- Sets up two PostgreSQL databases using Docker
- Generates secure, random passwords
- Provides connection URLs for both databases

For detailed information on using this script, please refer to its specific [README](setup-postgres-vm/README.md).

### 2. Node.js Setup Script

**Location**: `setup-nvm-node/setup-nvm-node.sh`

This script automates the installation of Node Version Manager (nvm) and the latest LTS version of Node.js on Ubuntu systems.

**Key Features**:
- Installs nvm (Node Version Manager)
- Installs the latest LTS version of Node.js
- Sets up proper environment configuration
- Verifies the installation

For detailed information on using this script, please refer to its specific [README](setup-nvm-node/README.md).

## Quick Start

You can run any script directly from GitHub without cloning the repository:

### PostgreSQL Setup
```bash
curl -fsSL https://raw.githubusercontent.com/BlitzJB/scripts/main/setup-postgres-vm/setup.sh | bash
```

### Node.js Setup
```bash
curl -fsSL https://raw.githubusercontent.com/BlitzJB/scripts/main/setup-nvm-node/setup-nvm-node.sh | bash
```

## Getting Started (Manual Installation)

1. Clone this repository:
   ```bash
   git clone https://github.com/BlitzJB/scripts.git
   cd scripts
   ```

2. Navigate to the script you want to use:
   ```bash
   cd setup-nvm-node  # or setup-postgres-vm
   ```

3. Follow the instructions in the script-specific README.

## Contributing

Feel free to contribute additional utility scripts by creating a new directory with your script and accompanying README file following the established structure.

## License

This repository is open source. Please check individual scripts for any specific licensing information.