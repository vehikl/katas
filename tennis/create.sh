#!/usr/bin/env bash

SCRIPT_DIR=~/Scripts/katas/tennis
SOURCE_DIR=~/Code/katas/tennis

# Get the project files
git clone https://github.com/emilybache/Tennis-Refactoring-Kata.git $SOURCE_DIR

cd $SCRIPT_DIR

docker-compose up -d files

mutagen sync create --name=tennis \
    --ignore=".idea" --ignore-vcs \
    --default-directory-mode=777 \
    --default-file-mode=666 \
    ${SOURCE_DIR}/php docker://tennis-files/project

docker-compose up -d app

docker-compose exec app composer install

cp -R ${SCRIPT_DIR}/files/idea ${SOURCE_DIR}/php/.idea

pstorm ${SOURCE_DIR}/php || phpstorm ${SOURCE_DIR}/php
