#!/bin/bash
pid=$(ps -aux | ps -aux | grep "Videos/Recordings/vid" | awk {'print $2'})

kill -2 $pid
