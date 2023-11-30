#/bin/bash
DIR=/tmp

for HOST in $(cat hosts)
do

scp begin.sh root@$HOST:$DIR/
scp end.sh root@$HOST:$DIR/
ssh root@$HOST 'bash -s' < begin.sh

done
