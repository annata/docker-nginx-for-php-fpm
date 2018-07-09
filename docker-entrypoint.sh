#!/bin/sh
set -e

if [ -z $FPM_PATH ];then
	FPM_PATH=/var/www/html
fi
if [ -z $FPM_URL ];then
	FPM_URL=127.0.0.1
fi
sed -i "s/FPM_URL/$FPM_URL/g" /etc/nginx/conf.d/default.conf
sed -i "s|FPM_PATH|$FPM_PATH|g" /etc/nginx/conf.d/default.conf
exec nginx -g 'daemon off;'