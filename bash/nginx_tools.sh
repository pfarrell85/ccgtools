#!/bin/bash

# Nginx Tools

# This contains common functions that are used when managing
#  a Nginx server

if [ $# -eq 0 ]
  then
    echo "Error: No arguments supplied, you must specify a command"
    exit 1
fi


# Check syntax
nginx -t

# Restart Nginx
systemctl restart nginx