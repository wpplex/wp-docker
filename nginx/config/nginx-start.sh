#!/bin/bash
sed -i "s/%root-path%/$PROJECT_NAME/" /etc/nginx/conf.d/default.conf
sed -i "s/%ip-address%/$PHP_PORT_9000_TCP_ADDR/" /etc/nginx/conf.d/default.conf

# SSL Certificate
mkdir /etc/nginx/ssl
cd /etc/nginx/ssl
openssl req -newkey rsa:2048 -nodes -subj "/C=US/ST=New York/L=Mn/O=Monsanto/CN=monsanto.com" -keyout nginx.key -x509 -days 365 -out nginx.crt

nginx
