#!/bin/bash

# Copyright 2017 J. Patrick Farrell 

# Counts all the files in the folder, recursively

if [ $# -eq 0 ]
  then
    echo "Error: No arguments supplied, you must specify a path to count files"
    exit 1
fi

DIR_NAME=$1

find $DIR_NAME -type f | wc -l