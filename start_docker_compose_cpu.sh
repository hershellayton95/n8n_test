#!/usr/bin/env bash

docker compose --profile cpu pull
docker compose create && docker compose --profile cpu up -d