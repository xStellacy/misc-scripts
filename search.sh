#!/bin/bash
query=$(echo "Search" | dmenu)
echo "$query"
if [ "$query" == "Search" ] || [ "$query" == "" ]
then
    exit
else
firefox -new-tab --url https://search.unlocked.link/search?q="$query"
fi
