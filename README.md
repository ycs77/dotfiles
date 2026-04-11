# Lucas Yang's dotfiles

I am using OS Windows 11 and the terminal is Git Bash.

## Files location

* `.gitconfig` => `C:\Users\[user]\.gitconfig`
* `.bash_profile` => `C:\Users\[user]\.bash_profile`
* `.bashrc` => `C:\Users\[user]\.bashrc`
* `.bash_aliases` => `C:\Users\[user]\.bash_aliases`
* `.gnupg/gpg-agent.conf` => `C:\Users\[user]\.gnupg\gpg-agent.conf`
* `windows-terminal-settings.json` (partial settings config) => `C:\Users\[user]\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json`
* `.claude/settings.json` => `C:\Users\[user]\.claude\settings.json`

## Setup Terminal Wallpaper

To set up terminal wallpaper, run the following commands in Git Bash:

```bash
git clone https://github.com/ycs77/terminal-wallpaper.git
cd terminal-wallpaper
./terminal-wallpaper init
./terminal-wallpaper add manosaba-characters
```

Set up a script to automatically change the terminal wallpaper at startup. Double-click `startup-install.cmd` to run it.

## Reference

* [doggy8088/git-setup](https://github.com/doggy8088/git-setup)
