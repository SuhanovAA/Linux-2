#!/bin/bash

function printSystemInfo {
  echo "${background_left}${font_color_left}HOSTNAME${default_color} = ${background_right}${font_color_right}$HOSTNAME${default_color}" 
  echo "${background_left}${font_color_left}TIMEZONE${default_color} = ${background_right}${font_color_right}$TIMEZONE${default_color}"
  echo "${background_left}${font_color_left}USER${default_color} = ${background_right}${font_color_right}$USER${default_color}"
  echo "${background_left}${font_color_left}OS${default_color} = ${background_right}${font_color_right}$OS${default_color}"
  echo "${background_left}${font_color_left}DATE${default_color} = ${background_right}${font_color_right}$DATE${default_color}" 
  echo "${background_left}${font_color_left}UPTIME${default_color} = ${background_right}${font_color_right}$UPTIME${default_color}" 
  echo "${background_left}${font_color_left}UPTIME_SEC${default_color} = ${background_right}${font_color_right}$UPTIME_SEC${default_color}" 
  echo "${background_left}${font_color_left}IP${default_color} = ${background_right}${font_color_right}$IP${default_color}"
  echo "${background_left}${font_color_left}MASK${default_color} = ${background_right}${font_color_right}$MASK${default_color}" 
  echo "${background_left}${font_color_left}GATEWAY${default_color} = ${background_right}${font_color_right}$GATEWAY${default_color}" 
  echo "${background_left}${font_color_left}RAM_TOTAL${default_color} = ${background_right}${font_color_right}$RAM_TOTAL${default_color}" 
  echo "${background_left}${font_color_left}RAM_USED${default_color} = ${background_right}${font_color_right}$RAM_USED${default_color}"
  echo "${background_left}${font_color_left}RAM_FREE${default_color} = ${background_right}${font_color_right}$RAM_FREE${default_color}"
  echo "${background_left}${font_color_left}SPACE_ROOT${default_color} = ${background_right}${font_color_right}$SPACE_ROOT${default_color}" 
  echo "${background_left}${font_color_left}SPACE_ROOT_USED${default_color} = ${background_right}${font_color_right}$SPACE_ROOT_USED${default_color}" 
  echo "${background_left}${font_color_left}SPACE_ROOT_FREE${default_color} = ${background_right}${font_color_right}$SPACE_ROOT_FREE${default_color}"
}

function print_color_scheme {
  if [ "$column1_background" -eq 2 ]; then
    echo "Column 1 background = 2 (red)"
  else 
    echo "Column 1 background = default (white)"
  fi

  if [ "$column1_font_color" -eq 4 ]; then
        echo "Column 1 font color = 4 (blue)"
  else 
          echo "Column 1 font color = default (red)"
  fi

  if [ "$column2_background" -eq 5 ]; then
          echo "Column 2 background = 5 (purple)"
  else 
          echo "Column 2 background = default (green)"
  fi

  if [ "$column2_font_color" -eq 1 ]; then
          echo "Column 2 font color = 1 (white)"
  else 
          echo "Column 2 font color = default (blue)"
  fi
}

printSystemInfo
echo 
print_color_scheme