#!/bin/bash

read -p "Do you want to write logs to file? (Y/N): " answer

if [[ $answer == "Y" || $answer == "y" ]]; then
    file_name=$(date +"%2d_%2m_%2y_%2H_%2M_%2S".status)
    ./info.sh >> $file_name
    echo "Create log file ./$file_name"
fi