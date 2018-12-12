FROM ubuntu:18.04

LABEL MAINTAINER="tomasortega@mainakesystems.com"

RUN apt-get update
RUN apt-get install nginx -y
RUN useradd pako
RUN apt-get update && apt-get install -y libltdl7 && rm -rf /var/lib/apt/lists/*

RUN echo '<marquee>Hello From Arsys!</marquee>' \
    > /var/www/html/index.html

EXPOSE 80

VOLUME ["/arsys-data"]

USER pako

