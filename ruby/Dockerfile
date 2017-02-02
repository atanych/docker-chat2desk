FROM chat2desk/ruby
RUN mkdir -p /var/www/api_hd \
    mkdir -p /root/scripts
COPY _deploy_api.sh /root/scripts/deploy_api.sh
COPY api_hd.sh /etc/service/api_hd/run

CMD ["/sbin/my_init"]