#!/bin/sh
set -e
exec /usr/sbin/php-fpm5.6 -c /etc/php/5.6/fpm/ -y /etc/php/5.6/fpm/php-fpm.conf --nodaemonize