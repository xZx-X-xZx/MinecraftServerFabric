#!/bin/bash

screen_nameb="worldb"
screen_idb=`screen -ls | grep .worldb| awk '{print $1}' | cut -d "." -f 1`
screen -X -S ${screen_idb} quit

#detach
screen -dmS $screen_nameb

#cmdb="cd /root/MinecraftServerFabric/runworld && mcdreforged"
#screen -x $screen_idb -p 0 -X stuff "$cmdb"
#screen -x $screen_idb -p 0 -X stuff '\n'
screen -S worldb -X stuff "cd /root/MinecraftServerFabric/runworld && mcdreforged$(printf \\r)"
