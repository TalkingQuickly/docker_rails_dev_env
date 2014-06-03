#!/bin/bash
docker run -i -t -v /app:/app --link redis:redis --link postgres:db  --rm rails:latest bash -c "cd /app && bundle exec rake db:migrate"