#! /bin/bash
#Crear un script llamado see.sh que reciba un nombre de fichero/directorio como parámetro. Si el nombre corresponde a un fichero, el script muestra el contenido del fichero con more, sino muestra el contenido del directorio con ls.
nombre=$1

if [ -a $nombre ] 
then
    more $nombre
else
    ls
fi
