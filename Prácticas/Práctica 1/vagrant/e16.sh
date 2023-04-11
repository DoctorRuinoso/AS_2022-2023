#!/bin/bash

echo COMPROBACION EJERCICIO 16


rm -r /vagrant/media/backup
rm -r /vagrant/media

#Para borrar archivos previos a la ejecucion

./ejercicio16.sh


fecha=$(date +%Y%m%d)
resultado=true;

for directorio in $(sudo ls ~/importante); do

	if(!(sudo ls /vagrant/media/backup/ | grep -q "${directorio}_.*${fecha}\.tar\.xz"));then
		resultado=false;
	fi


	#sudo tar -cJf /vagrant/media/backup/"$directorio"_"$fecha".tar.xz ~/importante/"$directorio"
done


#Comprueba resultado final
if $resultado == true;then
	echo Exito
else
	echo Error
fi
