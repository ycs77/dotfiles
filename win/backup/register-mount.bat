@echo off
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "RcloneB2" /t REG_SZ /d "C:\Program Files\Rclone\rclone.exe mount b2: S: --vfs-cache-mode full --vfs-cache-max-age 1h --buffer-size 32M --log-file C:\rclone\mount.log" /f
echo.
echo Rclone B2 registered successfully!
pause
