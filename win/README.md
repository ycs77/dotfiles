# Lucas Yang's Windows 11 Initialization Gulde

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

## Mount Cloud Storage

Install Rclone to manage cloud storage:

```sh
winget install --id=Rclone.Rclone -e
winget install --id=WinFsp.WinFsp -e
rclone config
```

## Install Node.js Packages

```sh
nvm install 22
nvm use 22
# Install Package Managers
npm install -g npm@latest yarn yarn-deduplicate
```

## Git Bash Configuration

Configure the bell sound in Bash on Windows:

```sh
# Enable bell sound
echo "set bell-style audible" >> ~/.inputrc

# Disable bell sound
echo "set bell-style none" >> ~/.inputrc
```
