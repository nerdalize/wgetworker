#!/bin/bash

if [ -z "$1" ]
  then echo "Usage: $0 <BASE64-encoded input sequence>"
  exit 0
fi

OUTPUT_DIR=/tmp/output/

echo "starting"
mkdir -p $OUTPUT_DIR

url=${1}

# # url=${1}
# echo "url is $url"

# split on / and get host
IFS='/' read -ra ADDR <<< ${url}
host=${ADDR[2]}

# wget $url
echo "processing $host"

outpath=${OUTPUT_DIR}${host}
wget --directory-prefix $outpath $url

# Append date and first line to logfile
echo "`date` $host" >> ${OUTPUT_DIR}log.txt