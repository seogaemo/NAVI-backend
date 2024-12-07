#!/bin/bash

git pull origin main
git submodule foreach git pull origin main --force
git submodule update --init --recursive --remote
docker compose up -d --build