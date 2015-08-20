#!/bin/bash

DIR="$( cd "$(dirname "$0")" ; pwd -P )"
cd $DIR

mkdir -p ../trees
cd ../trees

if [ -f "trees.csv" ]; then
  echo "Skipping trees.csv, already exists."
else
  CSV_URL="https://data.cityofnewyork.us/api/views/4eh7-xcm8/rows.csv?accessType=DOWNLOAD"
  wget $CSV_URL -O trees.csv
fi

if [ -f "trees.kml" ]; then
  echo "Skipping trees.kml, already exists."
else
  KML_URL="https://data.cityofnewyork.us/api/geospatial/e6n3-m3vc?method=export&format=KML"
  wget $KML_URL -O trees.kml
fi




