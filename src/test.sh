#!/bin/bash

cd $(dirname $0)

chmod +x 01/main.sh

function repeat_check_task {
	read -p "Conduct a test (y/n)?" answer
	case $answer in
		y | Y)
			./test.sh
			;;
		*)
			exit 0
			;;
	esac
}

read -p "Who task check (1 - 5) ?" task_number

case $task_number in
	1)
		echo "---TEST 01 RUN---"
		read -p "01/main.sh " parametr
		01/main.sh $parametr
		echo
		repeat_check_task
		;;
	*)
		exit 0
		;;
esac

