// 工作排程器
//   - 名稱：ChangeTerminalWallpaper
//   - 觸發：登入時 / 當任何使用者登入時執行
//   - 動作：
//     程式或指令碼："C:\Program Files\nodejs\node.exe"
//     新增引數：C:\Users\[user]\.terminal-wallpaper\change-wallpaper.js

import fs from 'node:fs'
import path from 'node:path'
import os from 'node:os'

changeImage({
  filenameTemplate: 'image-%s.png',
  startIndex: 1,
  endIndex: 6,
})

function changeImage({ filenameTemplate, startIndex, endIndex }) {
  const dirname = import.meta.dirname
  const windowsTerminalConfigPath = path.resolve(
    os.homedir(),
    'AppData',
    'Local',
    'Packages',
    'Microsoft.WindowsTerminal_8wekyb3d8bbwe',
    'LocalState',
    'settings.json'
  )

  let index = startIndex

  // 如果索引檔案存在則更新索引
  if (fs.existsSync(path.resolve(dirname, 'index'))) {
    index = parseInt(fs.readFileSync(path.resolve(dirname, 'index'), 'utf-8'))

    // 索引遞增
    index++

    // 如果索引超過結束索引則重置
    if (index > endIndex) {
      index = startIndex
    }
  }

  // 格式化索引為兩位數字字串
  const indexStr = String(index).padStart(2, '0')

  // 將索引儲存至檔案
  fs.writeFileSync(path.resolve(dirname, 'index'), String(index), 'utf-8')

  // 讀取 Windows Terminal 設定檔
  let config = fs.readFileSync(windowsTerminalConfigPath, 'utf-8')

  // 取得圖片路徑
  const imagePath = path.resolve(dirname, filenameTemplate.replace('%s', indexStr))

  // 檢查背景圖片路徑是否包含反斜線
  const hasBackslashesInPath = /"defaults":\s*\{[^}]*"backgroundImage": *"[^"]+\\+/.test(config)

  // 更新背景圖片路徑
  config = config.replace(
    /(?<="defaults":\s*\{[^}]*"backgroundImage": *")[^"]+/,
    hasBackslashesInPath
      ? imagePath.replaceAll(/[/\\]/g, '\\\\')
      : imagePath.replaceAll(/\\/g, '/')
  )

  // 更新 Windows Terminal 設定檔
  fs.writeFileSync(windowsTerminalConfigPath, config, 'utf-8')
}
