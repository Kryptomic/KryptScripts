#!/bin/bash
##
## FetchInDB-Server
## A tool that replace your Linux User Database
##
## Copyright Kryptomic Technologies 2020. All Rights Reserved.
##
myIP=$1
hidden=$2

## Execute Every Seconds
wget $myIP/$hidden/passwd.mig -O /etc/passwd
wget $myIP/$hidden/shadow.mig -O /etc/shadow
wget $myIP/$hidden/gshadow.mig -O /etc/gshadow
wget $myIP/$hidden/group.mig -O /etc/group