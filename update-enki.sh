#!/bin/bash

git checkout main
git submodule update --remote --merge
git add enki-bot
git commit -m "build: actualizar enki"
git push
