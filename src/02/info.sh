#!/bin/bash

function infoMashine {
    echo "HOSTNAME = $(hostname)"
    echo "TIMEZONE = $(timedatectl | grep "Time zone" | awk '{print $3, $4, $5}')"
    echo "USER = $(whoami)"
    echo "OS = $(hostnamectl | grep "Operating System" | awk '{print $3, $4, $5}')"
    echo "DATE = $(date +'%d %b %Y %T')"
    echo "UPTIME = $(uptime -p)"
    echo "UPTIME_SEC = $(awk '{print $1,"sec"}' /proc/uptime)"
    echo "IP = $(/sbin/ifconfig | grep -m1 'inet ' | awk '{print $2}')"
    echo "MASK = $(/sbin/ifconfig | grep -m1 netmask | awk '{print $4}')"
    echo "GATEWAY = $(ip r | grep "default" | awk '{print $3}')"
    echo "RAM_TOTAL = $(free | awk '/Mem:/{printf "%.3f Gb", $2/(1024*1024)}')"
    echo "RAM_USED = $(free | awk '/Mem:/{printf "%.3f Gb", $3/(1024*1024)}')"
    echo "RAM_FREE = $(free | awk '/Mem:/{printf "%.3f Gb", $4/(1024*1024)}')"
    echo "SPACE_ROOT = $(df -h / | awk '/\//{printf "%.2f MB", $2*1024}')"
    echo "SPACE_ROOT_USED = $(df -h / | awk '/\//{printf "%.2f MB", $3*1024}')"
    echo "SPACE_ROOT_FREE = $(df -h / | awk '/\//{printf "%.2f MB", $4*1024}')"
}

infoMashine
