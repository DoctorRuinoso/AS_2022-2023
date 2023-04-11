#!/bin/bash

mkdir /vagrant/media
mkdir /vagrant/media/backup

mkdir ~/importante
mkdir ~/importante/directorio1
mkdir ~/importante/directorio2
mkdir ~/importante/directorio3

touch ~/importante/directorio1/archivo1.txt
touch ~/importante/directorio2/archivo1.txt
touch ~/importante/directorio3/archivo1.txt

fecha=$(date +%Y%m%d)
for directorio in $(sudo ls ~/importante); do
	sudo tar -cJf /vagrant/media/backup/"$directorio"_"$fecha".tar.xz ~/importante/"$directorio"
done
