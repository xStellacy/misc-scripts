#!/bin/bash
dir=(~/Pictures/Wallpapers/)
picture=$(ls $dir | shuf | head -n1)

xwallpaper --zoom "$dir$picture"
chooseWallpaper(){
    read choice
    case $choice in
	*y*)
	    ~/.local/bin/wal -b "#000000" -i "$dir$picture"
	    ~/bin/xmobarwal.sh;;
	*) 
	    picture=$(ls $dir | shuf | head -n1)
	    xwallpaper --zoom "$dir$picture"
	    chooseWallpaper;;
    esac
}

chooseWallpaper
