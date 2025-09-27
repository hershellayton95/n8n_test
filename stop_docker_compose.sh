#!/usr/bin/env bash

docker stop ollama
docker container rm ollama-pull-llama
docker container rm ollama
docker compose down