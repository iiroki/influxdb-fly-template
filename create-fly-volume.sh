#!/bin/bash
SIZE_GB=$1

if [ -z $SIZE_GB ]
then
  echo 'Usage: ./create-fly-volume.sh <size_GB>'
  exit 1
fi

flyctl vol create influxdb_data --size $SIZE_GB --no-encryption
