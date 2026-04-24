@echo off
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v "RcloneB2" /f
echo.
echo Rclone B2 unregistered successfully!
pause
