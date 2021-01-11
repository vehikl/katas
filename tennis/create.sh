#!/usr/bin/env bash

# Get the project files
git clone https://github.com/emilybache/Tennis-Refactoring-Kata.git ~/Code/katas/tennis

cd ~/Scripts/katas/tennis

docker-compose up -d files

mutagen sync create --name=tennis \
    --ignore=".idea" --ignore-vcs \
    --default-directory-mode=777 \
    --default-file-mode=666 \
    ~/Code/katas/tennis/php docker://tennis-files/project

docker-compose up -d app

docker-compose exec app composer install

cp -R ~/Scripts/katas/tennis/files/idea ~/Code/katas/tennis/php/.idea

pstorm ~/Code/katas/tennis/php
