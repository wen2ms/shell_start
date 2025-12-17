#!/bin/bash

# Current user
whoami

# Current user uid gid groups
id

# Specific user
id garry

# View all users
cat /etc/passwd

# View all groups
cat /etc/group

# Create a normal user and automatically create home directory
sudo adduser garry
