#!/bin/bash

# Copyright 2017 J. Patrick Farrell 

# List Files in Folder

if [ $# -eq 0 ]
  then
    echo "Error: No arguments supplied, you must specify a path to list files"
    exit 1
fi

directory=$1

for entry in "$directory"/*; do
	echo $entry
done
