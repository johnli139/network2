#!/bin/bash
cd /root/network2
bash init.sh
cd /root
bash run_one.sh 24
cd /root/network2
bash destroy.sh
bash clean.sh
cd /root
