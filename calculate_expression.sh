#!/bin/bash

# expr and (()) only for integers

expr \( 10 + 10 \) \* 3 + 2
expr length "abcd"
# index-1 start
expr substr "abcd" 2 3
# find
expr index "abcd" "a"
# regular expression match, return matched length
expr match "abcdefg" ".*f"

((a = 1 + 2))
((b = a - 1))
((c = a + b))
echo "a = ${a}, b = ${b}, c = ${c}"
a=$((1 * 3)) b=$((2 * 3)) c=$((3 * 3))
echo "a = ${a}, b = ${b}, c = ${c}"
((a = 1 * 2, b = 2 * 2, c = 3 * 2))
echo "a = ${a}, b = ${b}, c = ${c}"
a=1
b=2
c=3
if ((a >= 1 && b == c)); then
	echo "true"
else
	echo "false"
fi

# let a=1+2 b=a+3 c=a+b
let a=1+2
let b=a+3
let c=a+b
echo "a = ${a}, b = ${b}, c = ${c}"

# a=$[1+2]
# b=$[a+3]
# c=$[a+b]
