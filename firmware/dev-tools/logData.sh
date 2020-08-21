#!/bin/bash
# Make sure script is run with root
if [[ $UID != 0 ]]; then
    echo "Please run this script with sudo:"
    echo "sudo $0 $*"
    exit 1
fi

node ./logData.js $1 $2
