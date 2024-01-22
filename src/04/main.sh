#!/bin/bash

if [ $# -ne 0 ]; then
  echo "Error: invalid input"
  exit 1
else
    # . ./config.cfg
    . ./setColor.sh
    . ./sysInfo.sh
    . ./printInfo.sh "$@"
fi

exit 0