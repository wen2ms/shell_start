#!/bin/bash

# Change File Mode (permissions)

# Set read (r), write (w), execute (x) for owner
chmod u+rwx chmod_command.sh

# For group
chmod g+x file.txt

# Remove write permission for others
chmod o-w file.txt

chmod u=rw,g=r,o=r file.txt

# 755 = rwxr-xr-x
chmod 755 file.txt

# Recursively change permissions in directory
# Attention: x permissions are required
chmod -R 644 myfolder/

# Set execute permission for all (user, group, others)
# chmod +x script.sh
chmod a+x script.sh

# Remove all permissions from others
chmod o= file.txt

# Give full permission to everyone (not recommended!)
chmod 777 file.txt
