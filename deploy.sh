#!/usr/bin/env sh
set -e

npm run build

cd boomcat

git init
git add -A
git commit -m 'deploy'


cd -