#!/bin/bash

df -h | tee usage.txt

# -a: append
echo 'This is usage' | tee -a usage.txt

find . -name '*.sh' | tee all_shell.txt | grep 'command' | tee only_commands.txt

python train.py 2>&1 | tee train.log
