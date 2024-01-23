#!/bin/bash

if [ $# != 1 ]
then
    echo "Error: not correct argument input"
    exit 1
fi

path=$1

if [[ "${path:${#path} - 1}" != "/" ]]; then
    echo "Error: not correct end symbol file"
    exit 1
fi

# if [[ ! -d $path ]]; then
#     echo "Error: not correct path"
#     exit 1
# fi

chmod +x info.sh
./info.sh $path
