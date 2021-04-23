  #! /bin/bash
  set -e

  bundle install --verbose
  yarn install

  bundle exec rails db:prepare
  bundle exec rails server -p 3000 -b 0.0.0.0
