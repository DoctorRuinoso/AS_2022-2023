#!/bin/bash

mkdir /vagrant/media
mkdir /vagrant/media/backup

mkdir ~/importante
mkdir ~/importante/directorio1
mkdir ~/importante/directorio2
mkdir ~/importante/directorio3

touch ~/importante/directorio1/archivo1.txt
touch ~/importante/directorio1/archivo2.txt
touch ~/importante/directorio1/archivo3.txt
touch ~/importante/directorio1/archivo4.txt
touch ~/importante/directorio1/archivo5.txt
touch ~/importante/directorio1/archivo6.txt

touch ~/importante/directorio2/archivo1.txt
touch ~/importante/directorio2/archivo2.txt
touch ~/importante/directorio2/archivo3.txt
touch ~/importante/directorio2/archivo4.txt
touch ~/importante/directorio2/archivo5.txt
touch ~/importante/directorio2/archivo6.txt

touch ~/importante/directorio3/archivo1.txt
touch ~/importante/directorio3/archivo2.txt
touch ~/importante/directorio3/archivo3.txt
touch ~/importante/directorio3/archivo4.txt
touch ~/importante/directorio3/archivo5.txt
touch ~/importante/directorio3/archivo6.txt

fecha=$(date +%Y%m%d)
for directorio in $(sudo ls ~/importante); do
    # Obtener la lista de archivos del directorio y ordenarlos por fecha de modificación
    archivos=$(ls -t ~/importante/"$directorio" | tail -n +6)
    
    # Si hay más de 5 archivos, borrar los más antiguos
    if [[ -n "$archivos" ]]; then
        sudo rm -f ~/importante/"$directorio"/$archivos
    fi
    
    # Crear el archivo de backup
    sudo tar -cJf /vagrant/media/backup/"$directorio"_"$fecha".tar.xz ~/importante/"$directorio"
done

