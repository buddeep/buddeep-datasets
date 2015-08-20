#!/bin/bash

DIR="$( cd "$(dirname "$0")" ; pwd -P )"
cd $DIR

# echo usage
if [[ $# -eq 0 ]]; then
  echo "usage: ./scripts/fetch_cached_map.sh 2012"
fi

# check if map downloaded
MAPS_DIR=../maps
mkdir -p $MAPS_DIR
if [ -d "$MAPS_DIR/$1" ]; then
  echo "Skipping $1 map, already exists."
  exit 0
fi
if [ ! -f "../config/$1_MAP_URL.txt" ]; then
  echo "Skipping $1 map, config/$1_MAP_URL.txt missing"
  exit 0
fi
URL=`cat ../config/$1_MAP_URL.txt`

# download, extract
cd $MAPS_DIR
wget $URL
tar -zxvf $1.tar.gz
rm $1.tar.gz
