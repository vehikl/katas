#!/usr/bin/env bash

# Get the project files
echo 'Cloning GitHub Repo ...'
git clone https://github.com/emilybache/Racing-Car-Katas.git ~/Code/katas/racing-car

# Copy PHPStorm settings
echo 'Copying PHPStorm settings ...'
cp -R ./files/idea ~/Code/katas/racing-car/php/.idea

cd ~/Scripts/katas/racing-car

echo 'Launching docker file volume'
docker-compose up -d files

echo 'Loading files into volume ...'
mutagen sync create --name=racing-car \
    --ignore=".idea" --ignore-vcs \
    --default-directory-mode=777 \
    --default-file-mode=666 \
    ~/Code/katas/racing-car/php docker://racing-car-files/project

echo 'Launching app ...'
docker-compose up -d app

echo 'Installing composer dependencies ...'
docker-compose exec app composer install

