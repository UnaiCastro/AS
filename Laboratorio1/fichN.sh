#Crear un script que cree una carpeta llamada cosas y después cree 100 ficheros vacíos llamados
#fich<numero>.txt dentro de ella, donde <numero> es un número entre 0 y 99.
#!/bin/bash

if [ ! -d cosas ]; then
    mkdir -p cosas
fi

numero=1

while [ $numero -le 100 ]
do
    touch cosas/fich$numero.txt
    numero=$((numero + 1))
done
