#!/usr/bin/env bash
set -eu
# since `make build` costs 5m, assume it has recently been run
rm -rf ./dist/* # glob avoids deleting .git worktree dir
cp -r ./build/* ./dist/
cd ./dist
git add .
git commit -m "chore: deploy"
git push
cd ..
git commit -m "chore: deploy"
cd ../card/2023/
git pull
cd ../
git add -u
git commit -m "chore: deploy 2023"
git push
