#!/bin/bash

DIR="$( cd "$(dirname "$0")" ; pwd -P )"
cd $DIR

./fetch_cached_map.sh 2012
./fetch_cached_map.sh 2014
