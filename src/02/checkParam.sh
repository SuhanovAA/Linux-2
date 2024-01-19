#!/bin/bash

if [ $# != 0 ]; then
  echo "invalid input"
else
  chmod +x info.sh
  ./info.sh
  chmod +x saveFile.sh
  ./saveFile.sh
fi