#!/bin/bash

rm -f data/pipe
mkfifo -m 744 data/pipe
#COUNTER=0
while true
do
  df > data/pipe
  #let COUNTER++
  sleep 1
done
