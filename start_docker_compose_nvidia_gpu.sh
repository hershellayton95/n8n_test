#!/usr/bin/env bash

docker compose --profile nvidia pull
docker compose create && docker compose --profile nvidia up -d