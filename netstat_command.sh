#!/bin/bash

# Network Statistics
netstat

# -t: TCP
# -u: UDP
# -l: Listening
# -n: Numeric IPs
# -p: Show process info
netstat -lntp

# -a: All sockets (listening and non-listening)
netstat -antup