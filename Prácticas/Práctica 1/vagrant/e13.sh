mkdir misistemadeficheros
mkfs.ext3 misistemadeficheros
r=$(file misistemadeficheros | grep ext3)

echo 'Datos del fichero: '$r;

if [[ -z $r ]]
then
	echo Sistema de ficheros no está en formato ext3
else
	echo Sistema de ficheros está en formato ext3
fi
