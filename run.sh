#!/bin/bash

if [ -z "$1" ]
  then 
  	echo "Usage: $0 <url>"
  	echo "This script will fetch an url specified as argument"
  exit 0
fi

wget $1