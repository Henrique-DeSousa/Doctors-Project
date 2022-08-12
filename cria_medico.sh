#!/bin/bash
if [ -f medicos.txt ]
then
	if [ "$#" -eq 0 ]
	then
		echo "No arguments! Please insert information!"
		echo "$(cat medicos.txt)"
		exit 1
	elif [ "$#" -eq 4 ]
	then
		if  grep -q "$2" medicos.txt 
		then
			echo "Error: That Doctor is already in the Database"
			exit 1
		else
			echo ""$1";$2;$3;$4" | sed 's/$/;0;0;0/' >> medicos.txt
		fi
	else
	echo "Not enough Arguments!"
	echo "$(cat medicos.txt)"
	exit 1
	fi 
else
	echo "File doesn't exist!"
	touch medicos.txt
	echo "File was created" 
fi
echo "$(cat medicos.txt)"
