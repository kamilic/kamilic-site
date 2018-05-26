#!/bin/bash
relativePath=$(dirname $0);
cd ${relativePath}; # in /sh/
absolutePath=$(pwd);
cd ..;
repoRootPath=$(pwd);

echo '=-=-=-=-= install kamilic-site repo dependencies =-=-=-=-=';
cd ${repoRootPath};
npm install;

echo "=-=-=-=-= clone all projects repo =-=-=-=-=";
mkdir -pv ${repoRootPath}/projects;
node ${repoRootPath}/scripts/pull-repo.js --all;

echo "=-=-=-=-= clone kamilic-site-server repo =-=-=-=-=";
mkdir -pv ${repoRootPath}/server;
cd ${repoRootPath}/server;
git init;
git remote add origin https://github.com/kamilic/kamilic-site-server;
git pull origin master;

