#!/bin/bash

path=$1

start_time=`date +%s`

# 1 point -> Total number of folders
total_folders=$(find "$path" -type d | wc | awk '{print $1}')
echo "Total number of folders (including all nested ones) = $total_folders"

# 2 point -> TOP 5 folders of maximum size
echo "TOP 5 folders of maximum size arranged in descending order (path and size):"



end_time=`date +%s.%N`

runtime=$((end-start))
echo $runtime $start $end
