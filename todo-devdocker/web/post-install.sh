#!/bin/bash
if [ -f tmp/pids/server.pid ]; then
  rm -f tmp/pids/server.pid
fi
ssh-agent sh -c 'ssh-add /home/todo/.ssh/id_rsa'
bundle install
#bundle check || bundle exec rake db:setup
bundle exec rake db:migrate
#bundle exec rails s -p 3001 -b '0.0.0.0'
bundle exec rdebug-ide --host 0.0.0.0 --port 1234 -- bin/rails s -p 3001 -b '0.0.0.0'
