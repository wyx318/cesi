#!/usr/bin/env sh

# 纭繚鑴氭湰鎶涘嚭閬囧埌鐨勯敊璇�
set -e

# 鐢熸垚闈欐�佹枃浠�
npm run docs:build

# 杩涘叆鐢熸垚鐨勬枃浠跺す
cd docs/.vuepress/dist

git init
git add -A
git commit -m 'deploy'

# 濡傛灉鍙戝竷鍒� https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# 濡傛灉鍙戝竷鍒� https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:wyx318/panccd.git master:gh-pages

cd -
