#!/bin/bash

cd /app
bundle exec rake db:drop db:create db:migrate

echo "importing compressed backup"
cp /app/db/current.sql.zip /tmp

cd /tmp
unzip /tmp/current.sql.zip 

PGPASSWORD=$DB_ENV_POSTGRESQL_PASS psql -U $DB_ENV_POSTGRESQL_USER -d dpa_development -f current.sql -h $DB_PORT_5432_TCP_ADDR