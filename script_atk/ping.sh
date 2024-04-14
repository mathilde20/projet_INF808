#!/bin/bash
if ["$1"==""]
then
	echo "Usage: ./ping.sh [IP]"
else
	ping -c 100 -i 0.05 $1
fi