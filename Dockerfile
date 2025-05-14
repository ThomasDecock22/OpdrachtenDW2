FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update
RUN apt install -y apache2

COPY html/ /var/www/html/

RUN date -u > /var/www/html/buildtime.txt

WORKDIR /var/www/html/

EXPOSE 80/tcp

CMD ["apachectl", "-D", "FOREGROUND"]
