#!/bin/bash

cat /etc/shells

echo $HOME

# system enviroment variables
echo $SHELL

# current shell
# -bash: login shell
# bash: unlogin shell
echo $0

# change shell
# /bin/zsh

echo "Hello Shell" >>foo.txt

date

whoami

# echo "Please input your name: "

# read name

# channel=$1

# export name=xxx
# export channel=shell_channel
echo "Hello $name! Welcome to $channel..."

# shuffle
# -i: input range, -n: number

number=$(shuf -i 1-10 -n 1)
echo $number

# while [[ $guessed_number -ne $number ]]
while true; do
	echo "Please guess a number in 1-10: "
	read guessed_number

	if [[ $guessed_number -eq $number ]]; then
		echo "Guessed correctly! Continue or not? (y/n): "

		read choice
		if [[ $choice = "y" ]] || [[ $choice = "Y" ]]; then
			number=$((RANDOM % 10 + 1))
			echo $number
			continue
		else
			break
		fi
	elif [[ $guessed_number -lt $number ]]; then
		echo "Less than"
	else
		echo "Greater than"
	fi
done

is_prime() {
	local num=$1

	if [[ $num -lt 2 ]]; then
		return 1
	fi

	for ((i = 2; i * i <= num; i++)); do
		if [[ $((num % i)) -eq 0 ]]; then
			return 1
		fi
	done
	return 0
}

read -p "Please input a integer: " number

if is_prime $number; then
	echo "$number is a prime"
else
	echo "$number is not a prime"
fi
