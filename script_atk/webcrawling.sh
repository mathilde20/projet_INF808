#!/bin/bash
if ["$1" == ""]
then
	echo "Usage: ./webcrawling [IP] [dico.txt]"
else
	gobuster dir -u http://$1/dvwa/ -w $2 -x txt,php,cgi,html,pdf
fi