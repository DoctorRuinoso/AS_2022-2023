#!/bin/bash

# Ruta del script de backup
ruta_script="/vagrant/ejercicio18.sh"

# Obtener la última línea del archivo crontab
last_line=$(crontab -l | tail -1)

# Comprobar si la última línea es la línea que hemos añadido
if [ "$last_line" = "30 9 * * * /bin/bash $ruta_script" ]; then
  echo "La línea de la tarea de backup está al final del archivo crontab."
else
  echo "La línea de la tarea de backup no está al final del archivo crontab."
fi

