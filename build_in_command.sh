#!/bin/bash

type cd
type ifconfig

alias
alias pslist="ps -ef"
unalias pslist

# not new line
echo -n "I am a "
echo cat
echo
# escape characters
echo -e "hello\nworld"

read
echo "last input=${REPLY}"
read name
echo $name
# prompt
read -p "Enter name, age: " name age
echo "name = ${name}, age = ${age}"
# number of reading characters
read -p "Yes(y)/No(n): " -n 1 letter
# printf "\n"
echo
echo "letter is ${letter}"
# -t: limit time
# -s: silent pattern
read -t 20 -sp "Enter password (within 20 seconds): " prev_password
echo
read -t 20 -sp "Enter password (within 20 seconds) again: " curr_password
echo
if [ $prev_password == $curr_password ]; then
	echo "Successfully!"
else
	echo "Failed"
fi

# echo $?
# exit
exit 127

# -: set
# +: unset
# i: int, a: array, r: readonly, x: export, A: associative array
declare -i num=20
num=abc
echo $num
num=23
echo $num
declare +i num
num=abc
echo $num
declare -a list=(100 abc hello)
echo ${list[*]}
declare -A list=(["one"]=100 ["two"]=abc ["three"]=hello)
echo ${list[one]}
echo ${list[*]}
