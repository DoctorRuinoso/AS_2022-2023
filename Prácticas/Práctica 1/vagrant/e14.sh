sudo rmdir /vagrant/mimontaje
sudo mkdir /vagrant/mimontaje
sudo mount misistemadeficheros /vagrant/mimontaje
r=$(mount | grep 'misistemadeficheros on /vagrant/mimontaje')

echo Resultado de buscar misitemadeficheros en los montajes del sistema:;
echo $r

if [[ -z $r ]]
then
        echo misistemadeficheros no está montado en /vagrant/mimontaje, error
else
        echo misistemadeficheros está montado en /vagrant/mimontaje, éxito
fi
