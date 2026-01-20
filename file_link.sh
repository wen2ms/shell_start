#!/bin/bash

# link

# -s: Symbolic link
touch bar.txt

ln -s bar.txt quz.txt

ls -l quz.txt

echo bar... >bar.txt

rm quz.txt

ln bar.txt quz.txt

ls -li bar.txt quz.txt

rm bar.txt
