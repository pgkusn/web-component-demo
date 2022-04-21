#!/usr/bin/env sh

# 當發生錯誤時終止腳本
set -e

# 打包
npm run build

# cd 到打包完的目錄下
cd dist

# 初始化
git init
git add -A
git commit -m 'deploy'

# 部署到 https://<USERNAME>.github.io/<REPO>
git push -f github.com:pgkusn/web-component-demo.git master:gh-pages

cd -