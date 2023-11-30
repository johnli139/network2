#/bin/bash
DIR=/tmp

for HOST in $(cat hosts)
do

ssh root@$HOST "$DIR/end.sh"
scp root@$HOST:$DIR/*.out ./out/

done
