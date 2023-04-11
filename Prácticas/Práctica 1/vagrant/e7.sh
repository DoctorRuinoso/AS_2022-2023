s=$(ps aux --sort=+%mem | grep -v root | head -n 4 | grep "gonzalo")

echo;

if [[ -n $s ]]
then
	echo Permisos de root no hallados en los procesos
else
	echo Permisos de root encontrados, error
fi

echo;

echo Uso de memoria:
ps aux --sort=+%mem | grep -v root | head -n 4 | awk '{print $3}'
