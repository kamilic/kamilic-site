#!/bin/bash
echo "update apt.....";
# update apt-get
apt update;

./home/kamilic-site/sh/set-nginx.sh;
./home/kamilic-site/sh//set-node.sh;
./home/kamilic-site/sh/clone-all-repos.sh;