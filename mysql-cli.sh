#!/bin/bash
. ./.env

docker-compose run --rm mysql     \
  mysql --host=mysql              \
        --user="$DB_USER"         \
        --password="$DB_PASSWORD" \
        --database="$DB_DATABASE"