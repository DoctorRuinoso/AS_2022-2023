dd if=/dev/zero of=misistemadeficheros bs=1MiB count=100

if [ -f misistemadeficheros ]
then
        echo Fichero misistemadeficheros creado, éxito
else
        echo Fichero misistemadeficheros NO creado, error
fi

#El comando ls -l mostrará información sobre los ficheros, así como su tamaño en bytes en la quinta
#columna.
# -rwxrwxrwx 1 vagrant vagrant 104857600 Mar 13 20:37 misistemadeficheros

var_tam=$(ls -l misistemadeficheros |cut -d' ' -f 5)
echo $var_tam

#100MiB * 2^20 = 104857600 bytes

if [ $var_tam == 104857600 ]
then
        echo Fichero misistemadeficheros ocupa 100MiB, éxito
else
        echo Fichero misistemadeficheros NO ocupa 100MiB, error
fi

echo Comparo el archivo /dev/zero con misistemadeficheros

#La opcion -n permite comparar hasta el tamaño de misistemadeficheros. Al ser de distinta longitus se cortaria la comparacion.
#La opcion -s devuelve cero si la igualdad es cierta.

if cmp -s -n 104857600 misistemadeficheros /dev/zero;
then
	echo Fichero contiene solo ceros, éxito
else
	echo Fichero NO contiene solo ceros, error
fi
