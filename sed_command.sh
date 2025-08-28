#!/bin/bash

# Stream Editor

# i: insert
# a: append
# d: delete
# c: copy, replace a whole line
# s: substitute

# -e: expressions
sed -e '1i\quz' foo.txt

# -iEXT: in-place edit with .EXT suffix
sed -ie '1i\quz' foo.txt

sed '1d' foo.txt

sed -i '1c\cuu cuu cuu monkey' foo.txt

# global substitute
sed 's/quz/monkey/' foo.txt

# substitute first word in first line
sed '1s/quz/monkey/' foo.txt

# substitute all words in first line
sed '1s/quz/monkey/g' foo.txt