#!/bin/bash

if [ -z "$1" ];
then
  BRANCH="master"
else
  BRANCH=$1
fi
cd /var/www/helpdesk

echo "$(tput setaf 2)[$BRANCH] Getting last changes from bitbucket$(tput sgr 0)"

git fetch
git checkout $BRANCH
git merge origin/$BRANCH

composer install
echo "$(tput setaf 2) Running migrations$(tput sgr 0)"
php yii migrate
npm install
echo "$(tput setaf 2) Runing common gulp$(tput sgr 0)"
gulp no_watch
cd web/js/widget/new
echo "$(tput setaf 2) Runing widget gulp$(tput sgr 0)"
gulp no_watch
echo "$(tput setaf 2) ---------------------- Done!!! ---------------------$(tput sgr 0)"
