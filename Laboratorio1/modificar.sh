#Crear un script que modifique la extensión de todos los ficheros .txt de un directorio a .t.

! /bin/bash

lista=$(ls *.txt)

for file in $lista;
do
    nombre=$(basename "$file" .txt)
    cp $file $nombre.t
    rm $file
done
