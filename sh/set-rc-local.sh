#!/bin/bash
relativePath=$(dirname $0);
cd ${relativePath}; # in /sh/
absolutePath=$(pwd);
cd ..;
repoRootPath=$(pwd);

cat ${repoRootPath}/sh/running-script.sh > /etc/init.d/env;

vim /etc/init.d/env +;

chmod +x /etc/init.d/env;
update-rc.d env defaults;