#!/usr/bin/env sh
# 當發生錯誤時終止腳本運行
set -e
# 打包
npm run build
# 移動至到打包後的dist目錄 
cd dist
# 因為dist資料夾預設是被ignore的，在進入dist資料夾後初始化git
git init 
git add -A
git commit -m 'deploy'
# 佈署到https://github.com/Chiapei-Chen/vanilla.git
git push -f https://github.com/Chiapei-Chen/vanilla.git master:gh-pages
# 將dist資料夾中的內容推送至遠端的gh-pages分支中，並強制將舊有的內容取代成目前的內容（指令 git push -f)
cd -