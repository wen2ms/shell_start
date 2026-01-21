#!/bin/zsh

echo $0 $1 $2 ${10}

# number of arguments
echo ${#}

# all argumments
echo $*
echo $@

# a string concatenated by arguments
for arg in "$*"; do
	echo $arg
done

# a list consist of arguments
for arg in "$@"; do
	echo $arg
done

# return value of last command
echo $?

# current shell pid
echo $$

# export ZSHPROFILE=zshprofile
# /etc/zprofile
# export ZSHRC=zsh_rc
# ~/.zshrc

# zsh
# zsh special_variables.sh

# zsh --login/-l special_variables.sh

echo $ZSHPROFILE
echo $ZSHRC
