# Lucas Yang's WSL Initialization Gulde

## [Windows] Installation

```sh
# Install WSL
wsl --install -d Ubuntu-24.04

# If your WSL version is not the latest, you can update it with:
wsl --update
wsl --version
```

## [WSL] Initial Configuration

```sh
# Set Vim as the default editor
sudo update-alternatives --set editor /usr/bin/vim.basic

# Remove user sudo password (replace [username] with your actual username)
sudo vim /etc/sudoers.d/[username]
# Add the following line:
[username] ALL=(ALL) NOPASSWD:ALL
```

## [WSL] Share Configuration Files

```sh
# Share .gitconfig
cp /mnt/c/Users/[username]/.gitconfig ~/.gitconfig

# Share SSH Keys
cp -r /mnt/c/Users/[username]/.ssh ~/.ssh
chmod 400 ~/.ssh/*
chmod 700 ~/.ssh
```

## [WSL] Install Essential Packages

```sh
sudo apt update && sudo apt upgrade -y

# Install Essential Packages
sudo apt install -y \
  build-essential \
  htop \
  jq \
  fzf \
  ripgrep \
  zip

# Install Git
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt update
sudo apt install -y git
git --version

# Install Node.js
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
source ~/.bashrc
nvm install 24
nvm alias default 24
# Install Package Managers
npm install -g npm
# Uninstall corepack for <= Node.js 24
npm uninstall -g corepack
npm install -g yarn pnpm yarn-deduplicate @antfu/ni

# Install PHP
sudo add-apt-repository ppa:ondrej/php -y
sudo apt update
sudo apt install -y \
  php8.5-cli \
  php8.5-fpm \
  php8.5-bcmath \
  php8.5-curl \
  php8.5-gd \
  php8.5-intl \
  php8.5-mbstring \
  php8.5-mysql \
  php8.5-sqlite3 \
  php8.5-xml \
  php8.5-zip
sudo update-alternatives --install /usr/bin/php php /usr/bin/php8.5 85
php -v
sudo sed -i 's/upload_max_filesize = .*/upload_max_filesize = 100M/' /etc/php/8.5/cli/php.ini
sudo sed -i 's/post_max_size = .*/post_max_size = 100M/' /etc/php/8.5/cli/php.ini

# Install Composer
curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
HASH=`curl -sS https://composer.github.io/installer.sig`
php -r "if (hash_file('SHA384', '/tmp/composer-setup.php') === '$HASH') { echo 'Composer installer verified'; } else { echo 'Composer installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
rm /tmp/composer-setup.php
composer --version

# Install MySQL
sudo apt install -y mysql-server
sudo systemctl start mysql
sudo mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH caching_sha2_password BY ''; FLUSH PRIVILEGES;"
sudo systemctl restart mysql

# Create Development Directories
mkdir -p ~/dev/code
mkdir -p ~/dev/testing
```

## [WSL] Setup Aliases

Add [`.bash_aliases`](./.bash_aliases) content to the file.

```sh
vim ~/.bash_aliases
```

## [Windows] Install Docker Desktop

Download and install [Docker Desktop](https://www.docker.com/products/docker-desktop/).

Then open Docker Desktop and configure the following settings:
- **General**, enable **Start Docker Desktop when you sign in to your computer**.
- **General**, disable **Open Docker Dashboard when Docker Desktop starts**.
- **Resources > WSL Integration**, enable **Enable integration with my default WSL distro**, then select **Ubuntu-24.04**.
