echo "INTRODUCE CONTRASEÑA: 1234"

if !(cat /etc/passwd | grep -q AAT); then
	sudo useradd -m -s "/bin/bash" AAT && sudo passwd AAT
fi
s=$(cat /etc/passwd | grep AAT)

if [[ -z $s ]]
then
        echo Usuario no encontrado, error
else
        echo Usuario creado, éxito
fi

s=$(cat /etc/passwd | grep /home/AAT)

if [[ -z $s ]]
then
        echo Usuario no tiene home, error
else
        echo Usuario tiene home, éxito
fi

echo Bash asociado al usuario:

grep AAT /etc/passwd

echo Intento de login, usuario: AAT, contraseña: 1234

su AAT
