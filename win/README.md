# Lucas Yang's Windows 11 Initialization Gulde

## Setup DNS Server

IPv4:

- 1.1.1.2
- 1.0.0.2

IPv6:

- 2606:4700:4700::1112
- 2606:4700:4700::1002

See: [Cloudflare DNS - Set up 1.1.1.1 on Windows](https://developers.cloudflare.com/1.1.1.1/setup/windows/#windows-11)

## Install Packages

```sh
# Useful tools
winget install --id=Gyan.FFmpeg -e
winget install --id=yt-dlp.yt-dlp -e
winget install --id=7zip.7zip -e

# Development tools
winget install --id=Microsoft.WindowsTerminal -e
winget install --id=CoreyButler.NVMforWindows -e
winget install --id=Git.Git -e
winget install --id=GitHub.cli -e
winget install --id=LeNgocKhoa.Laragon -v "6.0.0" -e
winget install --id=FiloSottile.mkcert -e

# Applications
winget install --id=Audacity.Audacity -e
winget install --id=JAMSoftware.TreeSize.Free -e
winget install --id=CodecGuide.K-LiteCodecPack.Full -e
winget install --id=Inkscape.Inkscape -e
winget install --id=OBSProject.OBSStudio -e
winget install --id=kangfenmao.CherryStudio -e
winget install --id=Anthropic.Claude -e
winget install --id=Discord.Discord -e
winget install --id=NickeManarin.ScreenToGif -e
```

## Install Node.js Packages

```sh
nvm install 26
nvm use 26
# Install Package Managers
npm install -g npm@latest
# Uninstall corepack for <= Node.js 24
npm uninstall -g corepack
npm install -g yarn pnpm @antfu/ni --allow-scripts=pnpm,yarn
```

## Git Bash Configuration

### Configure Bell Sound

```sh
# Enable bell sound
echo "set bell-style audible" >> ~/.inputrc

# Disable bell sound
echo "set bell-style none" >> ~/.inputrc
```
