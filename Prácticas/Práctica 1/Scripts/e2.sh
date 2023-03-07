rm -fr prueba
echo Creo un directorio prueba
mkdir prueba

echo Creo 2 ficheros .h y 2 ficheros .c en el directorio
cd prueba

touch file1.c
touch file2.c
touch file1.h
touch file2.h
touch file3.txt
touch file4.xml

echo 'Listado de ficheros:'
ls

n=$(sudo find /./vagrant/prueba -type f \( -name "*.c" -o -name "*.h" \) | wc -l)

if [ $n == 4 ]
then
        echo Contados 4 ficheros, comando correcto
else
        echo Comando incorrecto, no se han contado 4 ficheros
fi

