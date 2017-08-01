FROM nginx:1.13.3

LABEL version="1.13.3"

RUN apt-get update && \
	apt-get install -y openssl

COPY config/nginx.conf /etc/nginx/nginx.conf
COPY config/default.conf /etc/nginx/conf.d/default.conf

# Nginx startup script
ADD config/nginx-start.sh /opt/bin/nginx-start.sh
RUN chmod u=rwx /opt/bin/nginx-start.sh

ENTRYPOINT ["/opt/bin/nginx-start.sh"]
