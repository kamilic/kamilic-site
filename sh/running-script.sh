#!/bin/bash
### BEGIN INIT INFO
# Provides: kamilic
# Required-Start: $local_fs $network 
# Required-Stop: $local_fs
# Default-Start: 2 3 4 5
# Default-Stop:  0 1 6
# Short-Description: kamilic
# Description: kamilic       
### END INIT INFO
# set-env
case "$1" in
        start)
                export build_token='';
                export npm="/usr/bin/npm";
                export ssserver="/usr/local/bin/ssserver";
                cd /home/kamilic-site/;
                npm run start > /home/log/running-status;
                ssserver -c /home/ss-config.json -d start;
        ;;
        stop)
                #no-op
        ;;

        *)
                #no-op
        ;;
esac

exit 0;
