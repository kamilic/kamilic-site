#!/bin/bash
### BEGIN INIT INFO
# Provides: kamilic
# Required-Start: \$local_fs \$network  
# Required-Stop: \$local_fs   
# Default-Start: 2 3 4 5
# Default-Stop:  0 1 6
# Short-Description: kamilic
# Description: kamilic       
### END INIT INFO
# set-env
export build_token='';
bash /home/kamilic-site/;
npm run start;