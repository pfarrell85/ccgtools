#!/bin/bash

# Copyright 2017 J. Patrick Farrell 

# Basic script to check for an empty directory

if [ $# -eq 0 ]
  then
    echo "Error: No arguments supplied, you must specify a path to check if the directory is empty"
    exit 1
fi

path=$1

if [ -z "$(ls -A $path)" ]; then
	echo "Empty directory"
else
	echo "Non-empty directory"
fi