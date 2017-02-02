#!/bin/bash
source /etc/profile.d/rvm.sh
cd /var/www/api_hd
export RAILS_ENV="production"
export SECRET_KEY_BASE="462c138ae3c6214b769b13d7c0d50c0ffeb5130bfb543e328a26ed3cd07350617a7dc7baab845eab28038a791ca028e3f6d53112a1fd5216a825c4aff641909d"
export REDIS_HOST="redis"
bundle exec puma --preload