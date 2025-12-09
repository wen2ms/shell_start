#!/bin/bash

# default 10 lines

head baz.log

# -n: number of lines
head -n 5 baz.log

tail baz.log

tail -n 5 baz.log

# -f: follow
tail -f baz.log

# -F: follow when the file is replaced
tail -F baz.log
