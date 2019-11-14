#!/bin/bash
. ./.env

docker-compose run --rm           \
  -v "$PWD"/"$1":/tmp/"$1"        \
  mysql                           \
  mysql --host=mysql              \
        --user="$DB_USER"         \
        --password="$DB_PASSWORD" \
        --database="$DB_DATABASE" \
        --execute="source /tmp/$1;"