#Extender el script anterior para que cada fichero contenga la N-sima línea delmanual de ls (man ls). El fichero fich0.txt tendrá la línea 0 del manual, fich1.txt tendrá la línea 1 del manual, …

! /bin/bash

if [ ! -d cosas ]; then
    mkdir -p cosas
fi

numero=1

while [ $numero -le 100 ]
do
    man ls | sed -n "${numero}p" > cosas/fich$numero.txt
    numero=$((numero + 1))
done
