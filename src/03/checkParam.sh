#!/bin/bash

if [ $# -ne 4 ]; then
  echo "Error: invalid input"
  echo "Usage: $0 <background_title> <font_color_title> <background_value> <font_color_value>"
  exit 1
fi

pattern='^[1-6]$'

background_title=$1
font_color_title=$2
background_value=$3
font_color_value=$4

if ! ([[ $1 =~ $pattern ]] && [[ $2 =~ $pattern ]] && [[ $3 =~ $pattern ]] && [[ $4 =~ $pattern ]]); then
  echo "Error: invalid input"
  echo "The color value must be in the range from 1 to 6"
  exit 1
fi

if [[ $background_title -eq $font_color_title ]] || [[ $background_value -eq $font_color_value ]]; then
  echo "Error: invalid input"
  echo "Text and background colors should not match"
  exit 1
fi


