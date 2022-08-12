#!/bin/bash
if [ -f lista_negra_medicos.txt ]
	then
cat medicos.txt| awk -F";" '$5>6' | awk -F";" '$6<5 ' > lista_negra_medicos.txt
echo "$(cat lista_negra_medicos.txt)"
else
	echo "File doesn't exist!"
	touch lista_negra_medicos.txt
	echo "File now exists"
	./avalia_medicos.sh
fi
