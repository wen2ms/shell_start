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

# --progress: real-time progressing
rsync -av --progress local/ user@ip:/remote/path/

# --dry-run: trail run
# --delete: delete redundant files on remote
rsync -av --dry-run --delete local/ user@ip:/remote/path/

# -n: --dry-run
# -i: show information
rsync -avni --delete local/ user@ip:/remote/path/

rsync -av --exclude='__pycache__/' --exclude='.git' src/ target/
