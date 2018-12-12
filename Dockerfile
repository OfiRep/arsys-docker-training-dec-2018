FROM ubuntu:18.04

LABEL MAINTAINER="tomasortega@mainakesystems.com"

RUN apt-get update
RUN apt-get install nginx -y

RUN echo '<marquee>Hello From Arsys!</marquee>' \
    > /var/www/html/index.html

EXPOSE 80

ENV DATABASE_IP=192.168.1.4