#!/bin/bash

if [ $1 == "end" ]
then
pid="$(ps -C ffmpeg -o pid=)"
echo "$pid" | while read line
do
    kill -2 "$line"
done
else
ffmpeg -y -video_size 1366x768 -r 60 -f x11grab -i :0.0 ~/Videos/Recordings/vid-$(date '+%y%m%d-%H%M-%S').mp4
fi
