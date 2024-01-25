#!/bin/bash

cd $(dirname $0)

if [ $# != 1 ]
then
    echo "Error: not correct argument input"
    exit 1
fi



if [[ "${1:${#1} - 1}" != "/" ]]; then
    echo "Error: not correct end symbol file"
    exit 1
fi

if [[ ! -d $1 ]]; then
    echo "Error: not correct path"
    exit 1
fi

chmod +x info.sh
./info.sh $1
