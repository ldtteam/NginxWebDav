FROM nginx

RUN apt-get update -y && apt-get install -y nginx-extras apache2-utils

COPY ./nginx.conf /etc/nginx/conf.d/default.conf
RUN rm -rf /usr/share/nginx/html/*
RUN rm -rf /etc/nginx/sites-enabled/*

RUN mkdir -p /media/data
VOLUME /media/data
