FROM debian:11-slim

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install apache2 -y
COPY index.html /var/www/html/index.html

CMD apachectl -D FOREGROUND