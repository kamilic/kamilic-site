#!/bin/bash
relativePath=$(dirname $0);
cd ${relativePath}; # in /sh/
absolutePath=$(pwd);
cd ..;
repoRootPath=$(pwd);

echo "reload nginx";
nginx -s reload;

cd ${repoRootPath}/server/;
npm run stop;
npm run start;


