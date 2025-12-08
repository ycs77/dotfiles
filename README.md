# Lucas Yang's dotfiles

I am using OS Windows 11 and the terminal is Git Bash.

## Files location

* `.gitconfig` => `C:\Users\[user]\.gitconfig`
* `aliases.sh` => `C:\Program Files\Git\etc\profile.d\aliases.sh`
* `windows-terminal-settings.json` (partial settings config) => `C:\Users\[user]\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json`
* `.terminal-wallpaper` => `C:\Users\[user]\.terminal-wallpaper`
* `.claude/settings.json` => `C:\Users\[user]\.claude\settings.json`

## Setup Terminal Background Image

You can automate changing the Windows Terminal background image using Task Scheduler:

- **Task Name:** ChangeTerminalBackgroundImage
- **Trigger:** At logon / When any user logs on
- **Action:**
  - **Program/script:** `"C:\Program Files\nodejs\node.exe"`
  - **Add arguments:** `C:\Users\[user]\.terminal-wallpaper\change-image.js`

工作排程器中文參數說明：

- **名稱:** ChangeTerminalBackgroundImage
- **觸發程序:** 登入時 / 當任何使用者登入時執行
- **動作:**
  - **程式或指令碼:** `"C:\Program Files\nodejs\node.exe"`
  - **新增引數:** `C:\Users\[user]\.terminal-wallpaper\change-image.js`

This setup will run the specified Node.js script automatically whenever a user logs in, updating the terminal background image as desired.

## Reference

* [doggy8088/git-setup](https://github.com/doggy8088/git-setup)
