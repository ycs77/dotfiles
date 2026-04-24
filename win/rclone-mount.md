# Mount Cloud Storage as a Local Drive

## Installation

Install Rclone and WinFsp:

```bash
winget install --id=Rclone.Rclone -e
winget install --id=WinFsp.WinFsp -e
```

## Setting up Backblaze B2

1. Create a [Backblaze B2](https://www.backblaze.com/) account and set up a bucket.
2. Go to [Application Keys](https://secure.backblaze.com/app_keys.htm) and generate a new key scoped to your bucket with read/write access.

## Configuration

Run `rclone config` in PowerShell to connect to Backblaze B2:

```
$ rclone config

n/s/q> n
name> b2
Storage> b2
account> <your b2_key_id>
key> <your b2_app_key>
hard_delete> true
```

Copy the `backup` folder to your machine.

- Run [mount.bat](backup/mount.bat) to mount manually.
- For auto-mount at startup, edit [register-mount.bat](backup/register-mount.bat) to set the correct `rclone.exe` (use `where rclone`) and log paths, then run it to register a scheduled task.
