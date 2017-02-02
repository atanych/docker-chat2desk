FROM chat2desk/php
RUN mkdir -p /var/www/helpdesk \
    mkdir -p /var/www/gateway \
    mkdir -p /var/log/gateway
COPY www.conf /etc/php/5.6/fpm/pool.d/www.conf
COPY php.ini /etc/php/5.6/fpm/php.ini
COPY php-fpm.sh /etc/service/php-fpm/run
COPY deploy_helpdesk.sh /root/scripts/deploy_helpdesk.sh
COPY deploy_gateway.sh /root/scripts/deploy_gateway.sh

CMD ["/sbin/my_init"]