#!/bin/bash
##
## Integrate Bonvio SSH Script to KPanel
## A tool that integrates a server who used Bonvio's script to KPanel
##
## Copyright Kryptomic Technologies 2020. All Rights Reserved.
##

## Goto Root Directory
cd /root/

## Download Files
wget https://raw.githubusercontent.com/Kryptomic/KryptScripts/master/FetchInDB-Server.sh

## Add Execute Permission
chmod +x FetchInDB-Server.sh

## Test Run the Script
./FetchInDB-Server.sh

## Add to Cron
crontab -l > mycron
echo "* * * * * /root/FetchInDB-Server.sh" >> mycron
crontab mycron
rm mycron