#!/bin/bash

#/usr/local/bin/foo.sh
# chmod +x /usr/local/bin/foo.sh

while true 
do
    echo "Running foo service at $(date)" >> /var/log/foo.log
    sleep 5
done