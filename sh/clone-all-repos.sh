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
node ${repoRootPath}/scripts/pull-repo.js --all --local;