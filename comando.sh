#Crear un script que pida al usuario que teclee una palabra y compruebe si es un comando del sistema o no.

#! /bin/bash

comando="$1"

if [ -z "$comando" ]; then
    echo "Uso: $0 <comando>"
    exit 1
fi

if which "$comando" &>/dev/null; then
    echo "$comando es un comando válido en Linux."
else
    echo "$comando no es un comando válido en Linux."
fi
