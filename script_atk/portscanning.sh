#!/bin/bash
if ["$1" == ""]
then
	echo "Usage: ./port_scanning [IP]"
else
	echo "Port scanning ongoing..."
	nmap -sV -sC $1
fi
