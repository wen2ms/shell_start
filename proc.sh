#!/bin/bash

# /proc: Process 

# CPU info
cat /proc/cpuinfo

# Memory info
cat /proc/meminfo

# System load
cat /proc/loadavg

# Process info
# cat /proc/<pid>

# Files opened by the process 
cat /proc/1234/fd