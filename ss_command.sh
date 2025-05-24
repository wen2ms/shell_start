#!/bin/bash

# Show all sockets


# -t: TCP
# -u: UDP
# -p: Show process info
# -l: Listening
# -n: Numeric IPs /etc/services
ss -tlnp

# -a: All sockets (listening and non-listening)
ss -an

# -s: Summary statistics
ss -s

# -d: Show detailed socket information
ss -d