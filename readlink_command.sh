#!/bin/bash

# show where symlink points to
touch bar.txt
ln -s bar.txt quz.txt

readlink quz.txt

# -f: resolve path
readlink -f ../../

rm bar.txt quz.txt
