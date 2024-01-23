#!/bin/bash

path=$1

start_time=`date +%s`
echo $path
#1point -> Total number of folders
total_folders=$(find "$path" -type d | wc | awk '{print $1}')
echo "Total number of folders (including all nested ones) = $total_folders"




end_time=`date +%s.%N`

runtime=$((end-start))
echo $runtime $start $end
