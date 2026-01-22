#!/bin/bash

nums=(1 2 3 4 5 "world")
arr[6]="abc"
letters=([0]="a" [2]="c" [25]="z")

echo ${nums[0]}

# echo ${arr[@]}
echo ${arr[*]}
# nums count
echo ${#nums[*]}

echo ${#nums[5]}

concatenated=(${nums[*]} ${arr[*]})
echo ${concatenated[*]}

unset concatenated[4]
echo ${concatenated[*]}

unset concatenated
echo ${concatenated[*]}
