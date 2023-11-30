#!/bin/bash
IF=ens192
DIR=/tmp

ethtool -S $IF > $DIR/ethtool_stat-$(hostname)-after.out
for i in $(ls /sys/class/net/$IF/statistics); do echo $i\;$(cat /sys/class/net/$IF/statistics/$i); done > $DIR/sys_stat-$(hostname)-after.out
kill -9 $(cat $DIR/atop-PID)
/usr/sbin/nstat -s > $DIR/nstat-$(hostname).out
