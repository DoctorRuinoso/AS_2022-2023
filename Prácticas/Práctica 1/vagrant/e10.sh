echo "INTRODUCE CONTRASEÑA: 1234"

if !(cat /etc/passwd | grep webuser); then
	sudo useradd -M -s "/bin/nologin" webuser
fi
s=$(cat /etc/passwd | grep webuser)

if [[ -z $s ]]
then
        echo Usuario no encontrado, error
else
        echo Usuario creado, éxito
fi

echo Intento entrar al directorio /home/webuser:
cd /home/webuser

echo Bash asociado al usuario:
grep webuser /etc/passwd

echo Intento de login, usuario: webuser, contraseña: 1234
su webuser
