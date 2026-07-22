#!/bin/bash

# diff
# c: change, a: add, d: delete
diff laz.csv laz.txt

# -r: recursively campare folders
diff -r folder1 folder2

# -u: unified format
# -: first content, +: second content
diff -u laz.csv laz.txt

diff -u laz.csv laz.txt | less

diff -u local_file <(ssh user@ip 'cat remote_file')
