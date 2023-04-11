#!/bin/bash

echo COMPROBACION EJERCICIO 17

rm -r /vagrant/media/backup
rm -r /vagrant/media

# Para borrar archivos previos a la ejecucion
./ejercicio17.sh

fecha=$(date +%Y%m%d)
resultado=true

for directorio in $(sudo ls ~/importante); do
    if !(sudo ls /vagrant/media/backup/ | grep -q "${directorio}_.*${fecha}\.tar\.xz"); then
        resultado=false
    fi

    # Comprobar que se han guardado los últimos 5 archivos
    num_archivos=$(sudo ls -1 ~/importante/"$directorio" | wc -l)
    if [ "$num_archivos" -gt 5 ]; then
        num_backup=$(sudo ls -1 /vagrant/media/backup/ | grep "${directorio}.*\.tar\.xz" | wc -l)
        if [ "$num_backup" -ne 5 ]; then
            resultado=false
        fi
    fi
done

# Comprobar el resultado final
if $resultado == true; then
    echo Exito
else
    echo Error
fi
