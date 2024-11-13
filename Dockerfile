# We need to use NGINX 1.22.1 as that is the highest version of nginx the nginx-extras package supports
FROM docker.io/nginx:1.22.1

RUN apt-get update -y && apt-get install -y nginx-extras apache2-utils

COPY ./nginx.conf /etc/nginx/conf.d/default.conf
RUN rm -rf /usr/share/nginx/html/*
RUN rm -rf /etc/nginx/sites-enabled/*

RUN mkdir -p /media/data
VOLUME /media/data
