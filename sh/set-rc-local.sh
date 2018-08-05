#!/bin/bash
echo "#!/bin/bash
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
source build_token='';
bash /home/kamilic-site/sh/start-server.sh" > /etc/init.d/env;

vim /etc/init.d/env +;

chmod 755 /etc/init.d/env;
update-rc.d env defaults 95 2 3 4 5;