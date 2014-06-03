#!/bin/bash
cd /app
bundle install
bundle exec unicorn -p 3000