#!/bin/bash

#Asignamos a la variable usuarios el comando
usuarios=$(fgrep 'nologin' /etc/passwd | cut -d: -f1)

#Mostramos los usuarios.
echo "Usuarios sin acceso:"
echo "$usuarios"
