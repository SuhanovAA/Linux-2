#!/bin/bash

cd $(dirname $0)

if [ $# -ne 0 ]; then
	echo "Error: invalid input"
	echo "You must not input parametrs"
	exit 1
else
	chmod +x *.sh
	./printInfo.sh
fi

exit 0
