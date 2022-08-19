#!/bin/bash
xbindkeys &
xset r rate 250 50 &
setxkbmap -option caps:super &
killall xcape 2>/dev/null ; xcape -e 'Super_L=Escape' &
xmodmap -e 'keycode 135 = Super_R' &
xset -q | grep "Caps Lock:\s*on" && xdotool key Caps_Lock &
clipmenud &
