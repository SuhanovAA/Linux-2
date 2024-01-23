#!/bin/bash

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

background_left="${array_color_back[$1]}"
font_color_left="${array_color_font[$2]}"
background_right="${array_color_back[$3]}"
font_color_right="${array_color_font[$4]}"