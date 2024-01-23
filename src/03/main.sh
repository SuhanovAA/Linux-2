#!/bin/bash

cd $(dirname $0)

if [ $# -ne 4 ]; then
  echo "Error: invalid input"
  echo "Usage: $0 <background_title> <font_color_title> <background_value> <font_color_value>"
  exit 1
fi

pattern='^[1-6]$'

if ! ([[ $1 =~ $pattern ]] && [[ $2 =~ $pattern ]] && [[ $3 =~ $pattern ]] && [[ $4 =~ $pattern ]]); then
  echo "Error: invalid input"
  echo "The color value must be in the range from 1 to 6"
  exit 1
fi

if [[ $1 -eq $2 ]] || [[ $3 -eq $4 ]]; then
  echo "Error: invalid input"
  echo "Text and background colors should not match"
  exit 1
fi


chmod +x ./print03.sh
./print03.sh $1 $2 $3 $4


exit 0
