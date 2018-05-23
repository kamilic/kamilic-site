#!/bin/bash

# install nginx
echo "install nginx.....";
apt install nginx -y;

# copy nginx configs
cp ../configs/nginx/*.conf /etc/nginx/sites-enabled/ -v;

