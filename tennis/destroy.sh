#!/usr/bin/env bash

mutagen sync terminate tennis

cd ~/Scripts/katas/tennis

docker-compose down --volumes

rm -rf ~/Code/katas/tennis
