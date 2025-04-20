#!/bin/bash

# Global Regular Expression Point
grep "grep" grep_command.sh

# -i: ignore case
grep -i "grep" grep_command.sh

# -w: whole word search
grep -w "grep" grep_command.sh

# -e: multiple expression
grep -e "grep" -e ".sh" grep_command.sh

# -n: line number
grep -n ".sh" grep_command.sh

# -v: invert match
grep -v ".sh" grep_command.sh

# -r: recursive
grep -r ".sh" .

# -l: files with matches
grep -lr ".sh" .

# -E: extend regular expression
grep -E "grep|-" grep_command.sh