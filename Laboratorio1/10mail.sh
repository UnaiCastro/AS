#Imagina que quieres mandar un e-mail con el mismo cuerpo a varios destinatarios, pero personalizando la
#primera línea con el nombre de cada uno. Crear un fichero cuerpo.txt con el texto del cuerpo del e-mail y la
#palabra NOMBRE en cada lugar donde querrías poner el nombre, y un fichero nombres.txt con varios
#nombres personales. Crear un script que genere varios ficheros con el cuerpo del e-mail personalizado para
#cada destinatario.
#! /bin/bash

lista=($(cat ./mail/nombres.txt))
echo $lista
num=1

for nombre in "${lista[@]}"
do
    cp ./mail/cuerpo.txt ./mail/mail$num.txt
    sed -i "s/NOMBRE/${nombre}/g" ./mail/mail$num.txt
    num=$(($num+1))
done
