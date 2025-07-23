#!/bin/bash

cat /etc/hostname

# hostnamectl
hostname

hostnamectl --transient set-hostname foo

# default value
hostnamectl --static set-hostname foo
su