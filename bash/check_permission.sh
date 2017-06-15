#!/bin/bash

# Copyright 2017 J. Patrick Farrell 

# Simple script to check if file is executable
# Note this doesn't work with OSX version of stat but it works on Linux (Ubuntu)


if [ $# -eq 0 ]
  then
    echo "Error: No arguments supplied, you must specify a path to check if the directory is empty"
    exit 1
fi

filename=$1

if [ `stat -c %A $filename | sed 's/...\(.\).\+/\1/'` == "x" ] 
then
  echo "Owner has execute permission!"
fi