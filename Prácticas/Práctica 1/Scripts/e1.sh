#!/bin/sh
if grep -q ubuntu Vagrantfile; 
	then
	echo 1. Máquina virtual ubuntu instalada
else
	echo 1. Maquina virtual ubuntu no instalada
fi


if which apache2 | grep -q 'apache2';
	then
	echo 2. Apache instalado
else
	echo 2. Apache no instalado
fi

if grep -q 'config.vm.network "forwarded_port", guest: 80' Vagrantfile;
	then
	echo 3. Puerto 80 redirigido
else
	echo 3. Puerto 80 no redirigido
fi


echo fin
