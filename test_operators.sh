#!/bin/bash

test_operators_file="test_operators.sh"
comparison_operators_file="comparison_operators.sh"
# -w: writable
if [[ -w $test_operators_file ]]; then
	echo "${test_operators_file} is writable"
else
	echo "${test_operators_file} isn't writable"
fi
# -r: readable
if [[ -r $test_operators_file ]]; then
	echo "${test_operators_file} is readable"
else
	echo "${test_operators_file} isn't readable"
fi
# -x: executable
if [[ -x $test_operators_file ]]; then
	echo "${test_operators_file} is executable"
else
	echo "${test_operators_file} isn't executable"
fi
# -f: normal file
if [[ -f $test_operators_file ]]; then
	echo "${test_operators_file} is a normal file"
else
	echo "${test_operators_file} isn't a normal file"
fi
# -s: not empty
if [[ -s $test_operators_file ]]; then
	echo "${test_operators_file} isn't empty"
else
	echo "${test_operators_file} is empty"
fi
# -e: exists
if [[ -e $test_operators_file ]]; then
	echo "${test_operators_file} exists"
else
	echo "${test_operators_file} doesn't exist"
fi
# -d: directory
if [[ -d $test_operators_file ]]; then
	echo "${test_operators_file} is a directory"
else
	echo "${test_operators_file} isn't a directory"
fi
# -nt: newer than
if [[ $test_operators_file -nt $comparison_operators_file ]]; then
	echo "${test_operators_file} is newer than ${comparison_operators_file}"
else
	echo "${test_operators_file} isn't newer than ${comparison_operators_file}"
fi
