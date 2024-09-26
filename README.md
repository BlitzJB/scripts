# Scripts Repository

Welcome to the Scripts Repository! This repository contains a collection of utility scripts designed to automate various tasks and setups. Currently, it houses a script for setting up PostgreSQL databases using Docker.

## Repository Structure

```
scripts/
│
├── setup-postgres-vm/
│   ├── setup.sh
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

For detailed information on using this script, please refer to its specific [README](postgres/README.md).

## Getting Started

1. Clone this repository:
   ```
   git clone https://github.com/your-username/scripts.git
   cd scripts
   ```

2. Navigate to the script you want to use:
   ```
   cd setup-postgres-vm
   ```

3. Follow the instructions in the script-specific README.
