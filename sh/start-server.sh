#!/bin/bash
relativePath=$(dirname $0);
cd ${relativePath}; # in /sh/
absolutePath=$(pwd);
cd ..;
repoRootPath=$(pwd);

echo "nginx";
nginx -s stop;
nginx;

cd ${relativePath}/server/;
npm run stop;
npm run start;