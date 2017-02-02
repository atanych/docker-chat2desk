#!/bin/bash
source /etc/profile.d/rvm.sh

cd /var/www/api_hd

echo "$(tput setaf 2)Getting last changes from bitbucket$(tput sgr 0)"

git fetch
git merge origin/master

echo "$(tput setaf 2) Cleaning cache$(tput sgr 0)"
rm -Rf /var/www/api_hd/tmp/cache

echo "$(tput setaf 2) Bundle install!$(tput sgr 0)"
bundle install --path vendor/bundle

echo "$(tput setaf 2) Running migrations$(tput sgr 0)"
RAILS_ENV=production bundle exec rake db:migrate

echo "$(tput setaf 2) Precompiling assets$(tput sgr 0)"
bundle exec rake assets:precompile

echo "$(tput setaf 2) ---------------------- Done!!! ---------------------$(tput sgr 0)"