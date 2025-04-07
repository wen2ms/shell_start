#!/bin/bash

# Processes Snapshot
# Show processes owned by the current user
ps 

# -f: full-format
# PPID: Parent Process ID 
ps -f

# -e or -A: Every process
ps -ef | head -n 5

# -C: command name
ps -C python u

ps -u root -f 

# VSZ: Virtual Memory Size
# RSS: Resident Set Size
# -a: all processes for all users
# -u: user-oriented format
# -x: show processes without a controlling termina  
ps -aux | head -n 5

ps -aux --sort +cpu | head -n 5

ps -aux --sort -pid | head -n 5

ps -aux --sort +pcpu | head -n 5

ps -aux --sort -pmem | head -n 5
