#!/bin/bash

# Switch to root user (default)
su

# Switch to another user
su john

# -l: login shell
su - john

# -c: execute a single command as another user
su -c "ls /root"
