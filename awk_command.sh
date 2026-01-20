#!/bin/bash

# awk [options] 'pattern {action}' file

# $n: nth fields
# $0: original full line
# $NF: number of fields
# $NR: curr row number

# awk '{print}' laz.txt
awk '{print $0}' laz.txt

awk '{print $1}' laz.txt
awk '{print $(NF - 1)}' laz.txt

# sperate by space
awk '{print $1, $3, $5}' laz.txt

# format
awk '{print "col1: "$1, "col2: "$3, "col3: "$5}' laz.txt

# -F: fields seperator
awk -F ',' '{print}' laz.csv

awk 'NR==5 {print}' laz.txt
awk 'NR==5, NR==6 {print}' laz.txt

ifconfig en0 | awk 'NR==5 {print $2}'

# -v: modify build-in value
# OFS: Ouput Fields Seperator
awk -v FS=',' -v OFS='#' '{print $1, $NF}' laz.csv
