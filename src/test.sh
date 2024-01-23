#!/bin/bash

cd $(dirname $0)

for ((i=1; i<5; i++)); do
	chmod +x 0$i/*.sh
done

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

read -p "Who task check (1 - 5) ? -> " task_number

case $task_number in
	1)
		echo "---TEST 01 RUN---"
		read -p "01/main.sh " parametr
		01/main.sh $parametr
		echo
		repeat_check_task
		;;
	2)
		echo "---TEST 02 RUN---"
		02/main.sh
		echo
		repeat_check_task
		;;
	3)
		echo "---TEST 03 RUN---"
		read -p "03/main.sh " p1 p2 p3 p4
		03/main.sh $p1 $p2 $p3 $p4
		echo
		repeat_check_task
		;;
	4)
		echo "---TEST 04 RUN---"
		04/main.sh
		echo
		repeat_check_task
		;;
	*)
		exit 0
		;;
esac

