#!/bin/bash
if ["$1" == ""]
then
	echo "Usage: ./webcrawling [IP] [dico.txt]"
else
	gobuster dir -u $1 -w $2 -x txt,php,cgi,html,pdf
fi
