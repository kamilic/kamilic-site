#!/bin/bash
echo "update apt.....";
# update apt-get
apt update;

bash /home/kamilic-site/sh/set-nginx.sh;
bash /home/kamilic-site/sh//set-node.sh;
bash /home/kamilic-site/sh/clone-all-repos.sh;