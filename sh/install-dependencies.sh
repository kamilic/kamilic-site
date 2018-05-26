#!/bin/bash
relativePath=$(dirname $0);
cd ${relativePath}; # in /sh/
absolutePath=$(pwd);
cd ..;
repoRootPath=$(pwd);

echo '=-=-=-=-= install kamilic-site-server repo dependencies =-=-=-=-=';
cd ${repoRootPath}/server;
npm install;