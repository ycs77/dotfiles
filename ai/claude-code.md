# Claude Code Configuration

## Basic Notifications

Set up basic notifications for Claude Code by adding the following to your `settings.json` (replace `[user]` with your actual username):

```json
{
  "hooks": {
    "Notification": [
      {
        "hooks": [
          {
            "type": "command",
            "command": "powershell -Command \"(New-Object System.Media.SoundPlayer 'C:\\Users\\[user]\\.claude\\audios\\notification.wav').PlaySync()\""
          }
        ]
      }
    ],
    "Stop": [
      {
        "hooks": [
          {
            "type": "command",
            "command": "powershell -Command \"(New-Object System.Media.SoundPlayer 'C:\\Users\\[user]\\.claude\\audios\\stop.wav').PlaySync()\""
          }
        ]
      }
    ],
    "SubagentStop": [
      {
        "hooks": [
          {
            "type": "command",
            "command": "powershell -Command \"(New-Object System.Media.SoundPlayer 'C:\\Users\\[user]\\.claude\\audios\\stop.wav').PlaySync()\""
          }
        ]
      }
    ]
  }
}
```
