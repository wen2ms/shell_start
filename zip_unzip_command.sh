#!/bin/bash

zip foo.zip foo.sh foo.service

# -q: quite mode
zip -q foo.zip foo.sh

# -r: zip recursively
zip -r shell_start.zip ./

# -e: encrypted zip
zip -e foo.zip foo.sh

# -u: add files to the zip file
zip -u foo.zip zip_unzip_command.sh

# -x: exclude files
zip archieve.zip ./* -x ".*" 


# unzip

# -v: verbose list
unzip -v foo.zip

unzip foo.zip

# -o: overwrite the original file
unzip -o foo.zip

# -n: never overwrite
unzip -n foo.zip

# -d: specific directory
unzip foo.zip -d ~

# -P: with password
unzip -P password foo.zip