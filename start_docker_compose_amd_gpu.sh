#!/usr/bin/env bash

docker compose --profile amd pull
docker compose create && docker compose --profile amd up -d