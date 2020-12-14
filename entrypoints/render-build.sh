#!/bin/sh
set -euxo pipefail

bundle install
bundle exec rake db:migrate
bundle exec rake assets:precompile
