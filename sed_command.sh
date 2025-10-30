#!/bin/bash

# Stream Editor

# i: insert, in front
# a: append, after
# d: delete
# c: copy, replace a whole line
# s: substitute

# -e: expressions
sed -e '1i\quz' foo.txt

sed -e '1a\quz' foo.txt

# $: last line
sed -e '$i\quz' foo.txt

# -iEXT: in-place edit with .EXT suffix
sed -ie '1i\quz' foo.txt

sed '1d' foo.txt

sed '$d' foo.txt

# delete lines containing pattern
sed '/bar/d' foo.txt

# delete all blank lines
sed '/^$/d' foo.txt

# delete 2, 4 lines
sed '2,4d' foo.txt

sed -i '1c\cuu cuu cuu monkey' foo.txt

# global substitute first word all lines
sed 's/quz/monkey/' foo.txt

# substitute first word in first line
sed '1s/quz/monkey/' foo.txt

# substitute second word in first line
sed '1s/quz/monkey/2' foo.txt

# substitute all words in first line
sed '1s/quz/monkey/g' foo.txt

# substitude first word
sed '0,/quz/s/quz/monkey/' foo.txt

# add to tail
sed -i 's/$/quz/' foo.txt

# substitute all number at the beginning of lines
sed -i 's/^[0-9]\+/#/g' foo.txt

# substitute all word at the lines containing numbers
sed -i '/[0-9]/s/les/cow/g' foo.txt

# add a blank
sed '1s/$/\n/' foo.txt
sed '1i\'$'\n' foo.txt