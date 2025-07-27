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

```sh
choco install docker-cli docker-compose -y
```

Setup `DOCKER_HOST` environment variable in Windows:

```sh
# via PowerShell
$env:DOCKER_HOST='localhost:2375'

# via Command Prompt
set DOCKER_HOST=localhost:2375
```

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
