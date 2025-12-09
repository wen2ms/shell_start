#!/bin/bash

logfile='baz.log'

end_time=$(($(date +%s) + 300))

while [[ $(date +%s) -le $end_time ]]; do
	timestamp=$(date '+%Y-%m-%d %H:%M:%S')
	echo $timestamp
	echo $timestamp >>$logfile
	sleep 5
done
