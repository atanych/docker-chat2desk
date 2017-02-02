#!/bin/bash

if [ -z "$1" ];
then
  BRANCH="master"
else
  BRANCH=$1
fi
cd /var/www/gateway

echo "$(tput setaf 2)[$BRANCH] Getting last changes from bitbucket$(tput sgr 0)"

git fetch
git checkout $BRANCH
git merge origin/$BRANCH

composer install
echo "$(tput setaf 2) Running migrations$(tput sgr 0)"
php yii migrate
echo "$(tput setaf 2) Runing common gulp$(tput sgr 0)"