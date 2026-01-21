#!/bin/zsh

# view system path variables
env
# view system, user path varaiables and functions
set

echo $HISTFILE

num=123
echo $num
echo this is ${num} value

unset num
echo $num

# name="wen2ms"
# readonly name
readonly name="wen2ms"
name="w2ms"

# export VAR=var
# source /etc/zprofile
# source /etc/profile
# echo $VAR
