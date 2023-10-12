#Crear un script llamado lsdirs.sh que muestre los directorios contenidos en el directorio actual.


for item in *; do
    if [ -d "$item" ]; then
        echo "$item"
    fi
done
