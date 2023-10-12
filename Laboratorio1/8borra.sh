#Crear un script borra.sh que reciba un número indefinido de parámetros (de 0 a 9) y borre el fichero
#correspondiente a la suma del valor de los parámetros que reciba. Por ejemplo, borra.sh 1 4 5 9, borraría el
#fichero fich19.txt (1 + 4 + 5 + 9 = 19).
#! /bin/bash

lista=$(echo $*)

for i in $lista;
do
    sum=$(($sum+$i))
done
rm ./cosas/fich$sum.txt
