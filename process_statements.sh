#!/bin/bash

read -p "enter your score: " score
if ((score < 60)); then
	echo "score < 60"
elif ((score < 70)); then
	echo "60 <= score < 70"
else
	echo "score >= 70"
fi

if ((1 == 1)); then echo "successully!"; else echo "failed"; fi

# number.txt
read -p "enter a filename: " filename
read -p "enter a number: " number
# if [[ -w $filename || -n $number ]]
if [[ -w $filename || $number ]]; then
	echo $number >>$filename
	echo "successfully"
else
	echo "failed"
fi

read -p "enter a week day: " week_day
case $week_day in
1)
	echo "Monday"
	;;
2)
	echo "Tuesday"
	;;
3)
	echo "Wednesday"
	;;
4)
	echo "Thursday"
	;;
5)
	echo "Friday"
	;;
6)
	echo "Saturday"
	;;
7 | 0)
	echo "Sunday"
	;;
*)
	echo "Failed"
	;;
esac

read -p "enter a number: " number
i=0
while ((i < number)); do
	echo hello${i}
	# let ++i
	((++i))
done

i=0
# while true; do
while :; do
	echo "loopping"
	((++i))
	if ((i == 3)); then
		echo "Exit"
		break
	fi
done

for num in 1 3 5 7 9; do
	echo "num = ${num}"
done
for num in {1..3}; do
	echo "num = ${num}"
done
for ((i = 0; i <= 5; ++i)); do
	echo "i = ${i}"
done
# for ((;;)); do echo "i = ${i}"; done;

echo "what is your hobby?"
select hobby in "programming" "gaming" "swimming"; do
	case $hobby in
	"programming")
		echo "programming is good"
		break
		;;
	"gaming")
		echo "gaming is good"
		break
		;;
	"swimming")
		echo "swimming is good"
		break
		;;
	*)
		echo "input error, enter again"
		;;
	esac
done
