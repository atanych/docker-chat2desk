FROM nginx
RUN rm -f /etc/nginx/conf.d/default
COPY nginx.conf /etc/nginx/nginx.conf
COPY gateway.conf /etc/nginx/conf.d/gateway.conf
COPY helpdesk.conf /etc/nginx/conf.d/helpdesk.conf
COPY api.conf /etc/nginx/conf.d/api.conf