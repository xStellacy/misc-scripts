#!/bin/bash

id=$(xdotool getactivewindow)
xprop=$(xprop -id $id _NET_WM_NAME | awk -F \" {'print $2'} | sed -e 's/\///g')

cd ~/Pictures/Screenshots && import "$(date '+%y-%m-%d %H:%M:%S') || ${xprop::228}.png"
