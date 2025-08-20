#!/bin/bash

# tar: tape arhieve

# compression

# -c: create
# -f: filename of archieve
tar -cf foo.tar foo.sh foo.service

# -z: gzip format
tar -czf foo.tar.gz foo.sh foo.service

# -j: bzip2 format
tar -cbf foo.tar.bz2 foo.sh

# extract

# -x: extract
tar -x foo.tar

# -C: change extracting directory
tar -xzf foo.tar.gz -C ./

# extract specific file from archieve
tar -xf foo.tar foo.sh  

# -t: list
tar -tf foo.tar

# -v: verbose in more detail than -t
tar -tvf foo.tar
