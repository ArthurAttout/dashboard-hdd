#!/bin/bash

rm /home/arthur/docker/dashboard-hdd/data/pipe
mkfifo -m 744 /home/arthur/docker/dashboard-hdd/data/pipe
#COUNTER=0
while true
do
  df > /home/arthur/docker/dashboard-hdd/data/pipe
  #let COUNTER++
  sleep 1
done
