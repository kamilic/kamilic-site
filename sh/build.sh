#!/bin/bash
relativePath=$(dirname $0);
cd ${relativePath}; # in /sh/
absolutePath=$(pwd);
cd ..;
repoRootPath=$(pwd);

echo "=-=-=-=-= update apt =-=-=-=-=";
# update apt-get
apt update;


bash ${repoRootPath}/sh/set-nginx.sh;
bash ${repoRootPath}/sh/set-node.sh;
bash ${repoRootPath}/sh/clone-all-repos.sh;
bash ${repoRootPath}/sh/install-dependencies.sh;

echo '=-=-=-=-= done =-=-=-=-=';