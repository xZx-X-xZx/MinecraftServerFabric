#!/bin/bash

screen_namea="worlda"
screen_ida=`screen -ls | grep .worlda| awk '{print $1}' | cut -d "." -f 1`
screen -X -S ${screen_ida} quit

#detach
screen -dmS $screen_namea

#cmda="cd /root/MinecraftServerFabric/overworld && mcdreforged"
#screen -x $screen_ida -p 0 -X stuff "$cmda"
#screen -x $screen_ida -p 0 -X stuff '\n'
screen -S worlda -X stuff "cd /root/MinecraftServerFabric/overworld && mcdreforged$(printf \\r)"
