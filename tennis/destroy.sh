#!/usr/bin/env bash

mutagen sync terminate tennis

cd ~/Scripts/katas/tennis

docker-compose down
docker volume rm tennis_project

rm -rf ~/Code/katas/tennis
