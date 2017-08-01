FROM mysql:5.7.19

LABEL version="5.7.19"

# Use Custom custom.cnf configuration
COPY config/my.cnf /etc/mysql/conf.d/ 
RUN chmod 664 /etc/mysql/conf.d/my.cnf
