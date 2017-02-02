#!/bin/sh
export ROOT_PATH="/var/www/docker"
cd "$ROOT_PATH"
git clone https://chathelpdesk@bitbucket.org/sms-voteru/gateway.git
git clone https://chathelpdesk@bitbucket.org/sms-voteru/helpdesk.git
git clone https://chathelpdesk@bitbucket.org/sms-voteru/api_hd.git

#gateway
sudo chmod 777 -R "$ROOT_PATH/gateway/web/images"

#helpdesk
mkdir "$ROOT_PATH/helpdesk/web/images/users/client"
mkdir "$ROOT_PATH/helpdesk/web/images/users/temp"
sudo chmod 777 -R "$ROOT_PATH/helpdesk/web/images/users"
sudo chmod 777 -R "$ROOT_PATH/helpdesk/web/images/users/client"
sudo chmod 777 -R "$ROOT_PATH/helpdesk/web/assets/"
sudo chmod 777 -R "$ROOT_PATH/helpdesk/runtime/"
sudo chmod 777 -R "$ROOT_PATH/helpdesk/web/assets/"

#api
mkdir -p "$ROOT_PATH/api_hd/tmp/pids"


#cp /var/www/docker/helpdesk/config/db.sample.php /var/www/docker/helpdesk/config/db.php
#cp /var/www/docker/helpdesk/config/db-gateway.sample.php /var/www/docker/helpdesk/config/db-gateway.php
#cp /var/www/docker/helpdesk/config/params-local.sample.php /var/www/docker/helpdesk/config/params-local.php
#cp /var/www/docker/helpdesk/config/mailgun.sample.php /var/www/docker/helpdesk/config/mailgun.php
#cp /var/www/docker/helpdesk/config/redis.sample.php /var/www/docker/helpdesk/config/redis.php
#cp /var/www/docker/helpdesk/web/js/widget/new/params.sample.js /var/www/docker/helpdesk/web/js/widget/new/params.js
#
#cp /var/www/docker/gateway/config/db.sample.php /var/www/docker/gateway/config/db.php
#cp /var/www/docker/gateway/config/params-local.sample.php /var/www/docker/gateway/config/params-local.php
#
#
#cp /var/www/docker/api_hd/config/database.sample.yml /var/www/docker/api_hd/config/database.yml
#cp /var/www/docker/api_hd/config/puma.sample.rb /var/www/docker/api_hd/config/puma.rb
#cp /var/www/docker/api_hd/config/application.sample.yml /var/www/docker/api_hd/config/application.yml