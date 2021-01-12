#!/usr/bin/env bash

mutagen sync terminate parrot

cd ~/Scripts/katas/parrot

docker-compose down
docker volume rm parrot_project

rm -rf ~/Code/katas/parrot
