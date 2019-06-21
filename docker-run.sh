#!/usr/bin/env bash

docker-compose up --force-recreate --build --remove-orphans --renew-anon-volumes --abort-on-container-exit
