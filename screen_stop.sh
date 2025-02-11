#!/bin/bash
screen_name="MC"
screen_id=`screen -ls | grep .MC | awk '{print $1}' | cut -d "." -f 1`

cmd="/say 即将在5秒后关服！！！"
screen -x $screen_id -p 0 -X stuff "$cmd"
screen -x $screen_id -p 0 -X stuff '\n'

sleep 5

cmd="stop"
screen -x $screen_id -p 0 -X stuff "$cmd"
screen -x $screen_id -p 0 -X stuff '\n'

sleep 5

screen -X -S ${screen_id} quit
