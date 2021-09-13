#!/bin/bash

PASSWORD_FILE=private/password

if [ -f "${PASSWORD_FILE}" ]
then
	PASSWORD=$(cat "${PASSWORD_FILE}")
else
	echo "WARN | file not found: ${PASSWORD_FILE}"
	PASSWORD="password is unknown"
fi

echo password:
echo "${PASSWORD}"
echo
echo command:
echo reboot now
ssh -oKexAlgorithms=+diffie-hellman-group1-sha1 admin@192.168.1.254

