# Lucas Yang's WSL Initialization Gulde

## Installation

```sh
# Install WSL
wsl --install -d Ubuntu-24.04

# If your WSL version is not the latest, you can update it with:
wsl --update
wsl --version
```

## Setup WSL

```sh
# enter your password

# Update and upgrade packages
sudo apt update && sudo apt upgrade -y
```

## Docker Installation

Docker installation is referred from: https://blog.miniasp.com/post/2025/06/14/How-to-remove-Docker-Desktop-and-install-Docker-Engine-on-Windows-with-WSL-2

### Install Docker Engine in WSL

```sh
# Download install script for Docker
# https://docs.docker.com/engine/install/ubuntu/#install-using-the-convenience-script
curl -fsSL https://get.docker.com -o get-docker.sh

# Run the install script and ignore the warning about want you to install Docker Desktop
sudo sh get-docker.sh

# Manage Docker as a non-root user
# https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user
sudo usermod -aG docker $USER

# Check Docker installation
docker --version
docker compose version
```

### Check the Docker Engine will automatically start when WSL starts

Check Docker Engine service status:

```sh
systemctl status docker.service
```

### Setup Docker Cli on Windows

```sh
choco install docker-cli docker-compose -y

# or using winget
#
# But this Docker Compose installation is only supported
# using `docker-compose` command, not `docker compose`.
winget install Docker.DockerCLI Docker.DockerCompose
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

Test running the [Portainer](https://www.portainer.io/):

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
