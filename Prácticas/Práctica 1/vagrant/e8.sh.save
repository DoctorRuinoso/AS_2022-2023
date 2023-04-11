#!/bin/bash

touch e8_prueba.txt
echo -e "0.00 0.04 0.05 4/149 2374">e8_prueba.txt
echo -e "\n"
echo -e "Se ha creado un fichero de prueba con un contenido ficticio del fichero /proc/loadavg, con el formato que el mismo sigue.\nEl valor de carga promedio ficticio en los ultimos 5 minutos es de 0.04 (Segundo Campo)."
echo -e "El comando 'watch -n 5' hará que el comando que vamos a probar se ejecute cada 5 segundos."
echo -e "\nCONTENIDO FICHERO PRUEBA:"
cat e8_prueba.txt
echo -e "\nProbamos el comando 'cut -d' ' -f 2 e8_prueba.txt'"
echo -e -n "\n->Salida: "
cut -d' ' -f 2 e8_prueba.txt
echo -e "->Salida esperada: 0.04"
