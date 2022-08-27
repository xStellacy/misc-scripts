#!/bin/bash
background=$(sed -n 5p .cache/wal/colors)
foreground=$(sed -n 1p .cache/wal/colors)
sel_fg=$(sed -n 16p .cache/wal/colors)
sel_bg=$(sed -n 3p .cache/wal/colors)
sel_border=$(sed -n 16p .cache/wal/colors)
title=$(sed -n 1p .cache/wal/colors)
#BG xmobar
sed -e "s/#bac/$background/g;s/#for/$foreground/g;s/#title/$title/g" ~/.xmonad/backup/.xmobarrc > ~/.xmobarrc
#BG xmonad
sed -e "s/#bac/$background/g;s/#for/$foreground/g;s/#title/$title/g" ~/.xmonad/backup/xmonad.hs > ~/.xmonad/xmonad.hs
xmonad --recompile
xmonad --restart
