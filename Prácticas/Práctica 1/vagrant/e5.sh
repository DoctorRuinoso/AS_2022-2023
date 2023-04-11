sudo touch passwd_prueba.txt

echo -e "usuario1:x:1002:1002::/home/usuario1:/bin/bash" > passwd_prueba.txt
echo -e "usuario2:x:1002:1002::/home/usuario2:/bin/bash" >> passwd_prueba.txt
echo -e "usuario3:x:1002:1002::/home/usuario3:/usr/sbin/nologin" >> passwd_prueba.txt

cut -d: -f7 passwd_prueba.txt | sort | uniq -c | sort -nr
echo -e '      2 /bin/bash\n      1 /usr/sbin/nologin\n'



resultado=$(cut -d: -f7 passwd_prueba.txt | sort | uniq -c | sort -nr)
resultado_esperado=$(echo -e '      2 /bin/bash\n      1 /usr/sbin/nologin')

diff <(cut -d: -f7 passwd_prueba.txt | sort | uniq -c | sort -nr) <(echo -e '      2 /bin/bash\n      1 /usr/sbin/nologin')

echo RESULTADO:$resultado
echo ESPERADO:$resultado_esperado

if diff -q <(cut -d: -f7 passwd_prueba.txt | sort | uniq -c | sort -nr) <(echo -e '      2 /bin/bash\n      1 /usr/sbin/nologin');then
	echo Éxito
else
	echo Error
fi
