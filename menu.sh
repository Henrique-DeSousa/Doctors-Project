#!/bin/bash
while :
do

	echo "1) Cria Pacientes"
	echo "2) Cria Medico"
	echo "3) Stats"
	echo "4) Avalia medicos"
	echo "0) Sair"

	read Input
	case $Input in
	1)
		./cria_pacientes.sh
	;;
	2)
		echo "Insert Information:"
		read a
		read b
		read c
		read d
		echo
		./cria_medico.sh "$a" "$b" "$c" "$d"
	;;
	3)
		echo "Insert Keys: "
		read a
		read b
		echo
		./stats.sh "$a" "$b"
	;;
	4)
		./avalia_medicos.sh
	;;
	0)
		exit 1
	;;
esac
done
