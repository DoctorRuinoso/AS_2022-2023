#!/bin/bash

touch prueba.txt
echo -e "usuario1:contrasena:UID:GID:comentario:directorio_inicio:/bin/bash\nusuario2:contrasena:UID:GID:comentario:directorio_inicio:/usr/sbin/nologin\nusuario3:contrasena:UID:GID:comentario:directorio_inicio:/usr/sbin/nologin" > prueba.txt
echo -e "Se ha creado un fichero de prueba que almacena 3 usuarios con el mismo formato con que lo hace /etc/passwd.\nEl usuario1 es el unico que puede iniciar sesion, por lo que la salida del comando 'grep -F 'nologin' prueba.txt | cut -d: -f1' debe ser usuario2 y usuario3."
echo -e "\nCONTENIDO FICHERO PRUEBA:"
cat prueba.txt
echo -e "\nSALIDA:"
grep -F 'nologin' prueba.txt | cut -d: -f1
