#!/bin/bash
relativePath=$(dirname $0);
cd ${relativePath}; # in /sh/
absolutePath=$(pwd);
cd ..;
repoRootPath=$(pwd);

# install nginx
echo "=-=-=-=-= install nginx =-=-=-=-=";
apt install nginx -y;

# copy nginx configs
echo "=-=-=-=-= copy nginx configs =-=-=-=-=";
cp ${repoRootPath}/configs/nginx/*.conf /etc/nginx/sites-enabled/ -v;

