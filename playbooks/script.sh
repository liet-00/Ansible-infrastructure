#! /bin/bash

# print cpu load avg and connected devices
while true; do

	DATE=$(date "+%T %d-%m-%y")
	CPU=$(top -bn1 | grep load | awk '{ print "CPU LOAD:", $(NF-2), $(NF-1), $NF}')
	IP=$(netstat -tn 2>/dev/null  | grep -w tcp | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -nr | head -5)

	
	sleep 3
done 


