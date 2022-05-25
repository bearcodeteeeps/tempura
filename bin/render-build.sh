#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec rake assets:precompile
bundle exec rake assets:clean

if [ -n "$DB_MIGRATE" ]
then
  bundle exec rake db:migrate
fi
