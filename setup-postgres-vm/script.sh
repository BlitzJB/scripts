#!/bin/bash

generate_password() {
    openssl rand -base64 32 | tr -dc 'a-zA-Z0-9' | head -c 24
}

PROD_PASSWORD=$(generate_password)
DEV_PASSWORD=$(generate_password)

sudo apt update && sudo apt upgrade -y

sudo apt install -y vim git htop

sudo ufw allow OpenSSH
sudo ufw enable

sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install -y docker-ce
sudo systemctl enable docker
sudo usermod -aG docker $USER

sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

cat << EOF > docker-compose.yml
version: '3'
services:
  postgres_prod:
    image: postgres:13
    container_name: postgres_prod
    environment:
      POSTGRES_PASSWORD: $PROD_PASSWORD
    volumes:
      - postgres_prod_data:/var/lib/postgresql/data
    ports:
      - "5432:5432"

  postgres_dev:
    image: postgres:13
    container_name: postgres_dev
    environment:
      POSTGRES_PASSWORD: $DEV_PASSWORD
    volumes:
      - postgres_dev_data:/var/lib/postgresql/data
    ports:
      - "5433:5432"

volumes:
  postgres_prod_data:
  postgres_dev_data:
EOF

docker-compose up -d

sudo ufw allow 5432/tcp
sudo ufw allow 5433/tcp

IP_ADDRESS=$(ip -4 addr show scope global | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | head -n1)

echo "Setup complete."
echo "Production database URL: postgresql://postgres:$PROD_PASSWORD@$IP_ADDRESS:5432/postgres"
echo "Development database URL: postgresql://postgres:$DEV_PASSWORD@$IP_ADDRESS:5433/postgres"
echo "Note: If connecting from outside the VM, replace $IP_ADDRESS with the VM's public IP or hostname."