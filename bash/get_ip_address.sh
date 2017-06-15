#!/bin/bash

# This script finds the IP addresses for a particular interface using the IP
#  command.  Only works on Linux, not OSX

if [ $# -eq 0 ]
  then
    echo "Error: No arguments supplied, you must specify a path to count files"
    exit 1
fi

interface=$1

ip addr show $interface | grep inet | awk '{ print $2; }' | sed 's/\/.*$//'