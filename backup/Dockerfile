FROM alpine:3.6 

LABEL version="1.0.39"

RUN apk update
RUN apk add mysql-client wget make gcc build-base abuild binutils binutils-doc gcc-doc zlib-dev openssl-dev e2fsprogs-dev  

WORKDIR "/root/"
RUN wget --no-check-certificate https://www.tarsnap.com/download/tarsnap-autoconf-1.0.39.tgz
RUN tar -xf tarsnap-autoconf-1.0.39.tgz
WORKDIR "/root/tarsnap-autoconf-1.0.39"
RUN ./configure
RUN make all install clean
RUN mv /usr/local/etc/tarsnap.conf.sample /usr/local/etc/tarsnap.conf
# COPY keys/tarsnap.key /root/tarsnap.key

RUN mkdir /backups

ENV BACKUP_TIME 0 3 * * *

COPY backup /bin/
RUN chmod +x /bin/backup
COPY restore /bin/
RUN chmod +x /bin/restore

CMD [ "tail", "-f", "/var/log/lastlog" ]
