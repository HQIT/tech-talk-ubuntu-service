#!/bin/bash
### BEGIN INIT INFO
# Provides:          simple-service.sh
# Required-Start:    
# Required-Stop:     
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: simple service
# Description:       simple service for ubuntu 16.04
### END INIT INFO

case $1 in
  start)
    echo 'started'
    while [ -f /var/lock/foo.lock ];
    do
      sleep 2
    done
  ;;
  stop)
    rm -f /var/lock/foo.lock
    echo 'stoped'
  ;;
esac
exit 0
