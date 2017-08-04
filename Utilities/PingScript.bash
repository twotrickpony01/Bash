#!/bin/bash

if [ "$1" == ""  ]
then
echo "Usage: ./pingscript.sh [network]"
echo "Example: ./pingscript.sh 192.168.0"
else
echo "Please note that if ICMP is disabled, hosts will not respond."
for x in {1..254}; do
ping -c 1 $1.$x | grep "64 bytes" | cut -d" " -f4 | sed 's/.$//' 
done
fi
