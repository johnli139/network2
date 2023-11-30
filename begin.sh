#!/bin/bash
IF=ens192
DIR=/tmp

ethtool -S $IF > $DIR/ethtool_stat-$(hostname)-before.out
for i in $(ls /sys/class/net/$IF/statistics); do echo $i\;$(cat /sys/class/net/$IF/statistics/$i); done > $DIR/sys_stat-$(hostname)-before.out
atop -w $DIR/atop-$(hostname).out 10 >/dev/null 2>&1 &
echo $! > $DIR/atop-PID
/usr/sbin/nstat -n
