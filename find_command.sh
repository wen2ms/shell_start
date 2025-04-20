#!/bin/bash

find . -name "find_*.sh"

# -i: igonre case
find . -iname "find_command.sh"

# find . -size -1M
find . -size +1k

find . -maxdepth 2 -size +1k

# find files modified in the last 24 hours
find . -mtime -1
# find files modified exactly 10 minutes ago
find . -mmin 10
# find files created in the more than 24 hours
find . -ctime +1

# f: files
find . -type f -name "*.sh"
# d: directory
find . -type d -name "*command"