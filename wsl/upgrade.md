# WSL Upgrade Guide

## [WSL] Upgrade Packages

```sh
sudo apt update && sudo apt upgrade -y
sudo apt autoremove -y
```

## [Windows] Restart

Quit Docker Desktop, then run the following command in PowerShell to shut down WSL:

```sh
wsl --shutdown
```

Run PowerShell as Administrator, then reset the Windows network settings and clear the DNS cache:

```sh
netsh winsock reset
netsh int ip reset all
ipconfig /flushdns
```

Finally, restart your computer to apply the changes.
