#!/bin/bash

directorio=/vagrant/prueba_ej15
mkdir $directorio
touch $directorio/presentacion.pdf
touch $directorio/comandos.txt
touch $directorio/otro_script.sh


res=true
cont=0


#ordenar y contar ficheros por extension
num_de_cada_extension_antes=ls $directorio | cut -d. -f2 | sort | uniq -c | sort -nr

#Ejecutamos el script correspondiente al ejercicio 15
./ejercicio15.sh $directorio

num_de_cada_extension_despues=ls $directorio | cut -d. -f2 | sort | uniq -c | sort -nr

#Comprueba que hay mismo numero de ficheros de cada extension
if [$num_de_cada_extension_antes == $num_de_cada_extension_despues];then
	res=true
else
	res=false
fi


#Comprueba que los nombres sean numericos
if $res;then
	for archivo in $(ls $directorio); do
		cont=$((cont+1))
		nombre=$(basename "$archivo" | cut -d. -f1)

		if !(echo $nombre | grep -Eq '^[0-9]+$');then
			res=false
			break
		fi
	done
fi

#Comprueba resultado final
if $res == true;then
	echo Exito
else
	echo Error
fi
