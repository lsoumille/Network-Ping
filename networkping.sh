#!/bin/bash
if [ $1 == "" ]
then
  echo "./networkping.sh NETWORK"
  echo "./networkping.sh 192.198.1"
else
  for x in {1..254}
  do
    ping -c 1 $1.$x |grep "64 bytes" |cut -d" " -f4 |sed 's/.$//'
  done
fi
