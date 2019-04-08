#!/bin/bash
if [ -f tmp/pids/server.pid ]; then
  rm -f tmp/pids/server.pid
fi
bundle install
bundle exec rake db:migrate
bundle exec rails s -p 3000 -b '0.0.0.0'
