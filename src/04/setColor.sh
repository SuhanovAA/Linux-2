#!/bin/bash

config_file="config.cfg"

if [ ! -f "$config_file" ]; then
    echo "Error: Config file not found"
    exit 1
fi

default_fh=1 # white
default_fv=2 # red
default_bh=3 # green
default_bv=4 # blue

column1_background=$(grep "column1_background" "$config_file" | cut -d "=" -f2)
column1_font_color=$(grep "column1_font_color" "$config_file" | cut -d "=" -f2)
column2_background=$(grep "column2_background" "$config_file" | cut -d "=" -f2)
column2_font_color=$(grep "column2_font_color" "$config_file" | cut -d "=" -f2)

if [ -z "$column1_background" ]; then
    column1_background="$default_fh"
fi
if [ -z "$column1_font_color" ]; then
    column1_font_color="$default_fv"
fi
if [ -z "$column2_background" ]; then
    column2_background="$default_bh"
fi
if [ -z "$column2_font_color" ]; then
    column2_font_color="$default_bv"
fi

default_color="\033[0m"

left_text_white="\033[37m"
left_text_red="\033[31m"
left_text_green="\033[32m"
left_text_blue="\033[34m"
left_text_purple="\033[35m"
left_text_black="\033[30m"

right_text_white="\033[47m"
right_text_red="\033[41m"
right_text_green="\033[42m"
right_text_blue="\033[44m"
right_text_purple="\033[45m"
right_text_black="\033[40m"

array_color_font=('' $left_text_white $left_text_red $left_text_green $left_text_blue $left_text_purple $left_text_black)
array_color_back=('' $right_text_white $right_text_red $right_text_green $right_text_blue $right_text_purple $right_text_black)

background_left="${array_color_back[$column1_background]}"
font_color_left="${array_color_font[$column1_font_color]}"
background_right="${array_color_back[$column2_background]}"
font_color_right="${array_color_font[$column2_font_color]}"
