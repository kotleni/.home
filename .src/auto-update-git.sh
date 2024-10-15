#!/bin/bash

key=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 16 | head -n 1)

git add .src
git add .md
git add -f .config/nvim/
git add -f .config/wofi/
git add -f .config/kitty/
git add -f .config/hypr/
git add -f .config/waybar/

git commit -m "chore(auto): ${key}"
git push -u origin lgbt-edition
