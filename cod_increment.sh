#!/bin/bash

echo "Provisionamento Código fonte"

mkdir /publico /adm /ven /sec
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
useradd carlos -s /bin/bash -m -p $(openssl passwd admin123) -G GRP_ADM
useradd maria -s /bin/bash -m -p $(openssl passwd admin123) -G GRP_ADM
useradd joao -s /bin/bash -m -p $(openssl passwd admin123) -G GRP_ADM
useradd debora -s /bin/bash -m -p $(openssl passwd admin123) -G GRP_VEN
useradd sebastiana -s /bin/bash -m -p $(openssl passwd admin123) -G GRP_VEN
useradd roberto -s /bin/bash -m -p $(openssl passwd admin123) -G GRP_VEN
useradd josefina -s /bin/bash -m -p $(openssl passwd admin123) -G GRP_SEC
useradd amanda -s /bin/bash -m -p $(openssl passwd admin123) -G GRP_SEC
useradd rogerio -s /bin/bash -m -p $(openssl passwd admin123) -G GRP_SEC
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Implemento"

mkdir /home/carlos/Documentos
touch /home/carlos/Documentos/arquivo1.txt
touch /home/carlos/Documentos/arquivo2.txt
touch /home/carlos/Documentos/arquivo3.txt
touch /home/carlos/Documentos/arquivo4.txt
touch /home/carlos/Documentos/arquivo5.txt
mkdir /home/maria/Dio
mv /home/carlos/Documentos/arquivo* /home/maria/Dio
cp /home/maria/Dio/arquivo1.txt /home/carlos/Documentos/cparquivo.txt
echo "Feito cópia e alteração do nome do arquivo" > /home/carlos/Documentos/cparquivo.txt
cat /home/carlos/Documentos/cparquivo.txt
mkdir /home/amanda/AulaDio
touch /home/amanda/AulaDio/dados.txt

echo "********Coleta de dados********"

echo "*****Coleta de dados passwd*****" > /home/amanda/AulaDio/dados.txt
cat /etc/passwd >> /home/amanda/AulaDio/dados.txt
echo "*****Coleta de dados group*****" >> /home/amanda/AulaDio/dados.txt
cat /etc/group >> /home/amanda/AulaDio/dados.txt
cat /home/amanda/AulaDio/dados.txt
apt-get moo
