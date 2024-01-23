#!/bin/bash

if [ $# -ne 1 ]; then
	echo "Error: must input one argument"
	exit 1
fi

if [[ $1 =~ [[:digit:]] ]]; then
    echo "Error: digit are not allowed"
    exit 1
fi

echo $1
