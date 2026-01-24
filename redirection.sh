#!/bin/bash

echo hello shell >redirection.txt
echo goodbye shell >>redirection.txt

# stderr
ls -l asdasd 2>>redirection.txt

ls -l redirection.sh >>redirection.txt 2>&1

wc -l <redirection.sh

rows_count=1
while read line; do
	echo "${rows_count} $line"
	((++rows_count))
done <redirection.sh

wc -l <<EOF
a
b
c
d
e
EOF
