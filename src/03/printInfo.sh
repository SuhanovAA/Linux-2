#!/bin/bash

source sysInfo.sh
source setColor.sh 

function printSystemInfo {
  echo -e "${background_left}${font_color_left}HOSTNAME${default_color} = ${background_right}${font_color_right}$HOSTNAME${default_color}" 
  echo -e "${background_left}${font_color_left}TIMEZONE${default_color} = ${background_right}${font_color_right}$TIMEZONE${default_color}"
  echo -e "${background_left}${font_color_left}USER${default_color} = ${background_right}${font_color_right}$USER${default_color}"
  echo -e "${background_left}${font_color_left}OS${default_color} = ${background_right}${font_color_right}$OS${default_color}"
  echo -e "${background_left}${font_color_left}DATE${default_color} = ${background_right}${font_color_right}$DATE${default_color}" 
  echo -e "${background_left}${font_color_left}UPTIME${default_color} = ${background_right}${font_color_right}$UPTIME${default_color}" 
  echo -e "${background_left}${font_color_left}UPTIME_SEC${default_color} = ${background_right}${font_color_right}$UPTIME_SEC${default_color}" 
  echo -e "${background_left}${font_color_left}IP${default_color} = ${background_right}${font_color_right}$IP${default_color}"
  echo -e "${background_left}${font_color_left}MASK${default_color} = ${background_right}${font_color_right}$MASK${default_color}" 
  echo -e "${background_left}${font_color_left}GATEWAY${default_color} = ${background_right}${font_color_right}$GATEWAY${default_color}" 
  echo -e "${background_left}${font_color_left}RAM_TOTAL${default_color} = ${background_right}${font_color_right}$RAM_TOTAL${default_color}" 
  echo -e "${background_left}${font_color_left}RAM_USED${default_color} = ${background_right}${font_color_right}$RAM_USED${default_color}"
  echo -e "${background_left}${font_color_left}RAM_FREE${default_color} = ${background_right}${font_color_right}$RAM_FREE${default_color}"
  echo -e "${background_left}${font_color_left}SPACE_ROOT${default_color} = ${background_right}${font_color_right}$SPACE_ROOT${default_color}" 
  echo -e "${background_left}${font_color_left}SPACE_ROOT_USED${default_color} = ${background_right}${font_color_right}$SPACE_ROOT_USED${default_color}" 
  echo -e "${background_left}${font_color_left}SPACE_ROOT_FREE${default_color} = ${background_right}${font_color_right}$SPACE_ROOT_FREE${default_color}"
}

printSystemInfo