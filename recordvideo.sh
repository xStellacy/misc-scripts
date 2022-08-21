#!/bin/bash

ffmpeg -y -video_size 1366x768 -r 60 -f x11grab -i :0.0 ~/Videos/Recordings/vid-$(date '+%y%m%d-%H%M-%S').mp4
