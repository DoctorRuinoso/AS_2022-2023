echo "Primero, otorgamos a webuser un shell para que pueda loggearse";
sudo usermod --shell /bin/bash webuser

echo "INTRODUCE CONTRASEÑA: andres"

if !(cat /etc/passwd | grep -q andres); then
	sudo useradd -m -d /home/andres -s /bin/bash andres
	sudo passwd andres
fi

and=$(cat /etc/passwd | grep andres)
web=$(cat /etc/passwd | grep webuser)

if [[ -z "$and" && -z "$web" ]]
then
        echo Usuarios no encontrados, error.
else
        echo Usuario creados, éxito.
fi

echo Intento de login, usuario: andres, contraseña: andres
echo Dentro de andres ejecute los siguientes comandos:
echo 1. sudo su webuser
echo 2. exit
echo 3. sudo su root
su andres
