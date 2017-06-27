FROM silintl/php7

RUN apt-get update && apt-get install -y mysql-client

COPY ./conf/vhost-config.conf /etc/apache2/sites-enabled/

RUN mkdir -p /data

WORKDIR /data
EXPOSE 80
