#!/bin/bash

# Extend Arguments

echo xargs_command.sh wc_command.sh | xargs cat

# -n: max number of arguments per reading
# default echo
echo foo bar baz | xargs -n 1

# -I: placeholder
find . -name '*.sh' | xargs -I {} echo 'processing {}'

# -p: prompt before execution
echo foo bar | xargs -p

# -t: print execution
echo foo bar | xargs -t
