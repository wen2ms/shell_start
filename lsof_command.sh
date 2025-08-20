#!/bin/bash

# List Open Files
lsof

# -i: list network files
lsof -i
lsof -i:80
lsof -i TCP:22

# -n: no hostname resolution
lsof -n

# -P: no service name resolution
lsof -P

# -u: by user
lsof -u mysql

# -p: by PID
lsof -p 1234

lsof | grep deleted
