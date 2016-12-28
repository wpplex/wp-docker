FROM nginx:1.9.0

LABEL version="1.0"

COPY config/nginx.conf /etc/nginx/nginx.conf
COPY config/default.conf /etc/nginx/conf.d/default.conf

# Nginx startup script
ADD config/nginx-start.sh /opt/bin/nginx-start.sh
RUN chmod u=rwx /opt/bin/nginx-start.sh


# SSL Certificate
RUN mkdir /etc/nginx/ssl
RUN cd /etc/nginx/ssl
RUN openssl req -newkey rsa:2048 -nodes -subj "/C=US/ST=New York/L=Mn/O=Monsanto/CN=monsanto.com" -keyout nginx.key -x509 -days 365 -out nginx.crt

ENTRYPOINT ["/opt/bin/nginx-start.sh"]
