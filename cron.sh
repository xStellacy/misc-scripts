#!/bin/bash

# 300 seconds in 5 minutes
# 1800 seconds in 30 minutes
# 3600 seconds in 1 hour
# 10800 seconds in 3 hours

updateLocate(){
sudo updatedb
}

### Functions to fire every 3 hours
every3Hours(){
    while : # Since : does nothing yet returns 0, this will always be true.
	  do 
	sleep 10800

	updateLocate
    done
}

every3Hours
