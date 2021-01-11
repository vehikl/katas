#!/usr/bin/env bash

mutagen sync terminate racing-car

cd ~/Scripts/katas/racing-car

docker-compose down
docker volume rm gereric-php_project

rm -rf ~/Code/katas/racing-car
