#!/usr/bin/env bash

docker compose exec n8n sh -c 'n8n export:workflow --backup --output=/import-data/workflows'
docker compose exec n8n sh -c 'n8n export:credentials --backup --output=/import-data/credentials'
