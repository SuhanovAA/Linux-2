#!/bin/bash

if [ $# -eq 1 ]; then
  re='^[0-9]+$'
  if [[ $1 =~ $re ]]; then
    echo "invalid input"
  else
    echo $1
  fi
else
  echo "invalid input"
fi