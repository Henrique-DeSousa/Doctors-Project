#!/bin/bash
cat /etc/passwd | grep ^a[0-9+] | head | cut -d':' -f1,5  | cut -c 2- | sed 's/:/;/g; s/,/;/g' | sed 's/$/a/g' > aux.txt 
cat aux.txt | grep -Eo '[0-9]{1,9}' | sed 's/$/@iscte-iul.pt;100/g' > aux1.txt
paste -d '' aux.txt aux1.txt > pacientes.txt
rm aux.txt | rm  aux1.txt
