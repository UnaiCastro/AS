#Crear un script orden.sh que muestre el contenido del fichero /etc/passwd ordenado por nombre de usuario,
#UID o GID. El script recibirá un parámetro que indique cuál de los 3 utilizar como clave de ordenación.
#! /bin/bash

function nombre
{
    echo "Ordenando por nombre"
    sort /etc/passwd
}

function uid
{
    echo "Ordenando por UID"
    sort -n -t':' -k3 /etc/passwd
}

function gid
{
    echo "Ordenando por GID"
    sort -n -t':' -k4 /etc/passwd
}

function cerrar
{
    exit 0
}

if [ $# -eq 0 ]; 
then
    echo "Se debe especificar el orden de ordenacion:"
    echo "1 -> Nombre"
    echo "2 -> UID"
    echo "3 -> GID"
else
    case $1 in
    1) nombre;;
    2) uid;;
    3) gid;;
    *) cerrar;;
    esac
fi
