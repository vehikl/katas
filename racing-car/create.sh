#!/usr/bin/env bash

# Get the project files
git clone https://github.com/emilybache/Racing-Car-Katas.git ~/Code/katas/racing-car

cd ~/Scripts/katas/racing-car

docker-compose up -d files

mutagen sync create --name=racing-car \
    --ignore=".idea" --ignore-vcs \
    --default-directory-mode=777 \
    --default-file-mode=666 \
    ~/Code/katas/racing-car/php docker://racing-car-files/project

docker-compose up -d app

docker-compose exec app composer install

cp -R ./files/idea ~/Code/katas/racing-car/php/.idea
