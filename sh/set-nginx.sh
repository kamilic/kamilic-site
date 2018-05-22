#!/bin/bash
echo "update apt.....";
# update apt-get
apt update;

# install nginx
echo "install nginx.....";
apt install nginx -y;

# copy nginx configs
cp ../configs/nginx/*.conf /etc/nginx/sites-enabled/ -v;

