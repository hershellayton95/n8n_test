#!/usr/bin/env bash

source .env

N8N_EMAIL_USER=settimiocastiglione@gmail.com

docker compose exec -T postgres \
  psql -v ON_ERROR_STOP=1 \
    --username "$POSTGRES_NON_ROOT_USER" \
    --dbname "$POSTGRES_DB" <<EOSQL
UPDATE n8n.public."user"
SET "roleSlug"='global:admin'
WHERE email = '${N8N_EMAIL_USER}';
EOSQL
