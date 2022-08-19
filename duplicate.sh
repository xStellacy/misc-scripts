#!/bin/bash
time=$(date '+%H%M%S')
cp "$1" "$1.$(date '+%H%M%S')"
