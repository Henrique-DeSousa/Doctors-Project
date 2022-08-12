#!/bin/bash
if [ "$#" -eq 0 ]
	then 
		echo "Please insert arguments"
		exit 1
elif [ "$#" -eq 2 ] && ! [[ "$1" == [^a-zA-Z] ]]
	then
	grep -c "$1" pacientes.txt
	awk -v value="$2" 'BEGIN{FS=OFS=";"} $NF>value{count++} END{print count}' medicos.txt
else
	echo "No valid input!"
	exit 1
fi
