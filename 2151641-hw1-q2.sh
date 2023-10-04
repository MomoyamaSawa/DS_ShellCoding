#!/bin/bash

log_file="2151641-hw1-q2.log"
count=1

while [ $count -le 15 ]
do
    uptime | tee -a $log_file
    sleep 10
    count=$((count+1))
done
