#!/bin/bash
if ! pgrep -x firefox
then
    firefox &
fi
