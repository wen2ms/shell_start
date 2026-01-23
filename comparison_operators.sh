#!/bin/bash

# must have spaces to seperate
# must be int
expr 1 + 1
result=$(expr 1 + 1)

read -p "enter first number, second number: " left right
echo "left = ${left}, right = ${right}"
echo "${left} + ${right} = $(expr $left + $right)"
echo "${left} - ${right} = $(expr $left - $right)"
echo "${left} * ${right} = $(expr $left \* $right)"
echo "${left} / ${right} = $(expr $left / $right)"
echo "${left} % ${right} = $(expr $left % $right)"

[ 1 -eq 2 ]
echo $?
[ 1 -ne 2 ]
echo $?
[ 1 -lt 2 ]
echo $?
[ 1 -gt 2 ]
echo $?
[ 2 -le 2 ]
echo $?
[ 2 -ge 2 ]
echo $?

echo
((1 == 2))
echo $?
((1 != 2))
echo $?
((1 < 2))
echo $?
((1 > 2))
echo $?
((2 <= 2))
echo $?
((2 >= 2))
echo $?

echo
read -p "enter first number, second number: " left right
if [ $left -eq $right ]; then
	echo "${left} equals to ${right}"
else
	echo "${left} is not equal to ${right}"
fi

# both int and string
[ 1.1 == 1.1 ]
echo $?
[ abc == abc ]
echo $?
[ 12 \> 1 ]
echo $?
[[ 12 > 1 ]]
echo $?
[[ abc > abc || abc == abc ]]
echo $?
# -z: whether the string is empty
[ -z "" ]
echo $?
# -n: whether the string is not empty
[ -n "" ]
echo $?
# directly use $, whether the string is not empty
str=""
[ $str ]
echo $?

echo

[ 1 \> 2 ]
echo $?
# not
[ ! 1 \> 2 ]
echo $?
# or
[ 1 \> 2 -o "a" == "a" ]
echo $?
# and
[ 1 \> 2 -a "a" == "a" ]
echo $?

[[ 1 > 2 ]]
echo $?
# not
[[ ! 1 > 2 ]]
echo $?
# or
[[ 1 > 2 || "a" == "a" ]]
echo $?
# and
[[ 1 > 2 && "a" == "a" ]]
echo $?
