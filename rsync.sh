#!/bin/bash

# Remote Syncronizing

# -a: archieve and recursive, perserve metadata
# -v: verbose
# -z: compress data transfering
rsync -avz src/ dst/

# -e: specific remote shell
# rsync -avz -e 'ssh -p 2222' 
rsync -avz -e 'ssh' local/ user@ip:/remote/path/

rsync -avz -e 'ssh' user@ip:/remote/path/ local/
