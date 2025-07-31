# Lucas Yang's WSL Initialization Gulde

## Installation

```sh
# Install WSL
wsl --install -d Ubuntu-24.04

# If your WSL version is not the latest, you can update it with:
wsl --update
wsl --version
```

## Share Configuration Files

```sh
# Share .gitconfig
cp /mnt/c/Users/[username]/.gitconfig ~/.gitconfig

# Share SSH Keys
cp -r /mnt/c/Users/[username]/.ssh ~/.ssh
chmod 400 ~/.ssh/*
chmod 700 ~/.ssh
```

## Install Essential Packages

```sh
sudo apt update && sudo apt upgrade -y

# Install Essential Packages
sudo apt install -y \
  git \
  htop \
  jq

# Upgrade Git
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt update
sudo apt install -y git
git --version

# Install Node.js
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
source ~/.bashrc
nvm install 22
node -v
npm -v
# Install Package Managers
npm install -g npm@latest yarn yarn-deduplicate
# Install AI Tools
npm install -g @anthropic-ai/claude-code @google/gemini-cli ccusage

# Install PHP
sudo add-apt-repository ppa:ondrej/php -y
sudo apt update
sudo apt install -y \
  php8.3-cli \
  php8.3-fpm \
  php8.3-bcmath \
  php8.3-curl \
  php8.3-mbstring \
  php8.3-mysql \
  php8.3-tokenizer \
  php8.3-xml \
  php8.3-zip
sudo update-alternatives --install /usr/bin/php php /usr/bin/php8.3 83
php -v

# Install Composer
curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
HASH=`curl -sS https://composer.github.io/installer.sig`
php -r "if (hash_file('SHA384', '/tmp/composer-setup.php') === '$HASH') { echo 'Composer installer verified'; } else { echo 'Composer installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
rm /tmp/composer-setup.php
composer --version

# Create Development Directories
mkdir -p ~/dev/code
mkdir -p ~/dev/testing
```

## Setup Aliases

Add [`.bash_aliases`](./.bash_aliases) content to the file.

```sh
vim ~/.bash_aliases
```

## Docker

Docker installation is referred from: https://blog.miniasp.com/post/2025/06/14/How-to-remove-Docker-Desktop-and-install-Docker-Engine-on-Windows-with-WSL-2

### Install Docker Engine in WSL

```sh
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER
rm get-docker.sh
```

Check Docker Engine service status:

```sh
docker --version
docker compose version
systemctl status docker.service
```

### Setup Docker Cli on Windows

Ensure you have [Chocolatey](https://chocolatey.org/install) installed on Windows.

Then run the following command as Administrator in PowerShell:

```sh
choco install docker-cli docker-compose -y
```

Setup `DOCKER_HOST` environment variable in Windows.

Check Docker CLI installation on Windows:

```sh
docker version
docker compose version
```

Test running a Docker container:

```sh
docker run --rm -it hello-world
```

Test running the [Portainer](https://www.portainer.io/), visit http://localhost:9000/ in your browser:

```sh
docker volume create portainer_data
docker run -d -p 8000:8000 -p 9000:9000 -p 9443:9443 --name portainer \
  --restart=always \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v portainer_data:/data \
  portainer/portainer-ce:latest
```

### Setup VSCode Container Tools extension configuration

```json
{
  "containers.environment": {
    "DOCKER_HOST": "tcp://localhost:2375"
  }
}
```
