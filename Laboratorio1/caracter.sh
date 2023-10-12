#Crear un script que pida al usuario que teclee una palabra y escriba por pantalla el número de caracteres de esa palabra.

#! /bin/bash
read -p "Teclee una palabra: " palabra
echo -n $palabra | wc -m;
