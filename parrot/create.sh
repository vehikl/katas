#!/usr/bin/env bash

# Get the project files
git clone https://github.com/emilybache/Parrot-Refactoring-Kata.git ~/Code/katas/parrot

cd ~/Scripts/katas/parrot

docker-compose up -d files

mutagen sync create --name=parrot \
    --ignore=".idea" --ignore-vcs \
    --default-directory-mode=777 \
    --default-file-mode=666 \
    ~/Code/katas/parrot/PHP docker://parrot-files/project

docker-compose up -d app

docker-compose exec app composer install

cp -R ~/Scripts/katas/parrot/PHP/idea ~/Code/katas/parrot/PHP/.idea

pstorm ~/Code/katas/parrot/PHP || phpstorm ~/Code/katas/parrot/PHP
