#!/bin/bash

str='123'
echo ${str}num
str='456'
echo ${str}num
str=789
echo ${str}num

# length of string
echo length is ${#str}

str=012345678mid87654321
# length starting 
echo ${str:0:2}
# from start to end
echo ${str:3}
echo ${str:0-5:2}
# from the right of frist target position on the left
echo ${str#*1}
# from the right of last target position on the left
echo ${str##*1}
# from the left of frist target position on the right
echo ${str%1*}
# from the left of last target position on the right
echo ${str%%1*}
