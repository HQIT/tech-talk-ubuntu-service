# tech-talk-ubuntu-service
example for create a new service in Ubuntu desktop 16.04 

## LSB tags and overrides in **simple-service.sh**
```
### BEGIN INIT INFO
# Provides:          simple-service.sh
# Required-Start:    
# Required-Stop:     
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: simple service
# Description:       simple service for ubuntu 16.04
### END INIT INFO
```

## add new service
1. cp **simple-service.sh** into ``/etc/init.d/``
1. ``update-rc.d simple-service.sh defaults on``
1. here service added
1. start the service
```
$ service simple-service start
$ ps aux | grep simple-service
gang      95363  1.7  3.2 1467708 98388 ?       Ssl  21:56   0:05 /usr/share/code/code simple-service.sh
```
1. stop the service
```
$ sudo service simple-service stop
$ ps aux | grep simple-service
```

## others
1. ``update-rc.d`` usage can ``man`` for details
1. auto startup after reboot is related with some ``/etc/rc?.d/Sxxxx``, ``runlevel`` staffs, google for more details
