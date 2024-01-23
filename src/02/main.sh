#!/bin/bash
cd $(dirname $0)

if [ $# != 0 ]; then
  echo "invalid input"
else
  chmod +x ./info.sh
  ./info.sh
  chmod +x ./saveFile.sh
  ./saveFile.sh
fi
