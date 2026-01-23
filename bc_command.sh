#!/bin/bash

bc calc.txt
# quit

# bc
scale = 2
10 / 3
# last result
last
# output base
obase = 2
7
#input base
ibase = 8
quit

# -l: math library
bc -l
quit

echo "scale = 2; 10 / 3" | bc

echo "s(3.1415926)" | bc -l

a=2
echo "b = $a + 2; b" | bc

# a=`echo "1 + 1" | bc`
a=$(echo "1 + 1" | bc)
echo $a

# e^x = 1 + x + x^2 / 2! + x^3 / 3! + ...
str=$(
	bc -l <<EOF
e(1)
1 + 1 + 1.0 / 2 + 1.0 / 6 + 1.0 / 24
EOF
)
echo $str
