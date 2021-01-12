#!/usr/bin/env bash

mutagen sync terminate ice-cream-scorer

cd ~/Scripts/katas/ice-cream-scorer

docker-compose down
docker volume rm ice-cream-scorer_project

rm -rf ~/Code/katas/ice-cream-scorer
