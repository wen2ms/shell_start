#!/bin/bash

# Disk Usage
du

# Default directories and subdirectories
# -h: Human-readable
du -h

# -s: Summarize: show only total for each argument
du -sh

# For each files and directories excluding subdirectories
# * mismatch hidden files like .git 
du -sh *

# --max-depth=N: same as -d Show depth of N level
du -h --max-depth=2
du -h -d 1

# -a: Size of all files and subdirectories
du -a

# -c: Total size of multiple directories
du -ch dir1 dir2

# --exclude=PATTERN: Skip files matching PATTERN
du --exclude="*.git"