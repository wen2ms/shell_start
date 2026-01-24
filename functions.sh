#!/bin/bash

# basename [path] [suffix]

basename ../../../foo.txt.backup .backup
basename ../../../foo.txt

dirname ../../../foo.txt

foo() {
	echo hello shell
}
foo

sum() {
	read -p "enter first number: " num1
	read -p "enter second number: " num2
	return $((num1 + num2))
}
sum
echo "sum is $?"

bar() {
	echo "first parameter is $1"
	echo "second parameter is $2"
	echo "tenth parameter is ${10}"
	echo "all parameters are $*"
}
bar {0..9}
