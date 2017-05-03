#!/bin/bash

if [ -z "$1" ]
  then echo "Usage: $0 <BASE64-encoded input sequence>"
  exit 0
fi

wget $1