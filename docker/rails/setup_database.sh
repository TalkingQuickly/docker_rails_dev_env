#!/bin/bash
cd /app
bundle exec rake db:drop db:create db:migrate

echo "importing compressed backup"
cp /app/db/current.sql.zip /tmp

cd /tmp
unzip /tmp/current.sql.zip 

export MYSQL_HOST=$AIT_MYSQL_PORT_3306_TCP_ADDR

mysql -f -u admin --password=aitdev3333  activeintime_development < /tmp/current.sql