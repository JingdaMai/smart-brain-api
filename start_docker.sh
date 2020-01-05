#!/bin/sh

cd $HOME/Desktop/smart-brain-api

sudo fuser -k 5432/tcp
sudo fuser -k 6379/tcp


docker-compose down
docker-compose up --build
