// 工作管理員
//   - 名稱：ChangeTerminalBackgroundImage
//   - 觸發：登入時 / 當任何使用者登入時執行
//   - 動作：
//     程式或指令碼："C:\Program Files\nodejs\node.exe"
//     新增引數：C:\Users\[user]\.my-terminal\change-image.js

import fs from 'node:fs'
import path from 'node:path'

changeImage({
  imageFilename: 'image.png',
  filenameTemplate: 'image-%s.png',
  startIndex: 1,
  endIndex: 6,
})

function changeImage({ imageFilename, filenameTemplate, startIndex, endIndex }) {
  const dirname = import.meta.dirname
  let index = startIndex

  // Read index from file
  if (fs.existsSync(path.resolve(dirname, 'index'))) {
    index = parseInt(fs.readFileSync(path.resolve(dirname, 'index'), 'utf-8'))

    index++

    // Reset index if it exceeds the end index
    if (index > endIndex) {
      index = startIndex
    }
  }

  // Save index to file
  fs.writeFileSync(path.resolve(dirname, 'index'), String(index), 'utf-8')

  // Copy image
  fs.copyFileSync(
    path.resolve(dirname, filenameTemplate.replace('%s', String(index).padStart(2, '0'))),
    path.resolve(dirname, imageFilename)
  )
}
