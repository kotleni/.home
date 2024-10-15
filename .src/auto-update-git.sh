#!/bin/bash

key=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 16 | head -n 1)

git add *
git commit -m 'chore(auto): ${key}'
git push -u origin lgbt-edition
