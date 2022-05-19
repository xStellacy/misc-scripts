#!/bin/bash
query=$(echo "Search" | dmenu)
echo "$query"
if [ "$query" == "Search" ]
then
    exit
else
icecat -new-tab --url https://lite.qwant.com/?q="$query"
fi
