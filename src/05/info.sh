#!/bin/bash

start_time=`date +%s`





end_time=`date +%s.%N`

runtime=$((end-start))
echo $runtime $start $end