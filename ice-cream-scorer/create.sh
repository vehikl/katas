#!/usr/bin/env bash

# Get the project files
git clone https://github.com/grantlovell/IceCreamScorer-Refactoring-Kata.git ~/Code/katas/ice-cream-scorer

cd ~/Code/katas/ice-cream-scorer
git checkout create-php-version

cd ~/Scripts/katas/ice-cream-scorer

docker-compose up -d files

mutagen sync create --name=ice-cream-scorer \
    --ignore=".idea" --ignore-vcs \
    --default-directory-mode=777 \
    --default-file-mode=666 \
    ~/Code/katas/ice-cream-scorer/php docker://ice-cream-scorer-files/project

docker-compose up -d app

docker-compose exec app composer install

cp -R ~/Scripts/katas/ice-cream-scorer/files/idea ~/Code/katas/ice-cream-scorer/php/.idea

pstorm ~/Code/katas/ice-cream-scorer/php || phpstorm ~/Code/katas/ice-cream-scorer/php
