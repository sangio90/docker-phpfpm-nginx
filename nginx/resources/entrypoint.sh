#!/usr/bin/env sh

mv /resources/vhost.conf /etc/nginx/conf.d/

sed -i -e "s/PHP_HOST/$PHPFPM_HOST/g" /etc/nginx/conf.d/vhost.conf
sed -i -e "s/PHP_PORT/$PHPFPM_PORT/g" /etc/nginx/conf.d/vhost.conf

nginx -g 'daemon off;'