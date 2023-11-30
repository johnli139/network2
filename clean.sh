#/bin/bash
DIR=/tmp

for HOST in $(cat hosts)
do

ssh root@$HOST "rm -f $DIR/*.sh $DIR/*.out $DIR/*PID*"

done
