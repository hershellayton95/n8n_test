#!/usr/bin/env bash

docker compose --profile gpu-amd pull
docker compose create && docker compose --profile gpu-amd up -d