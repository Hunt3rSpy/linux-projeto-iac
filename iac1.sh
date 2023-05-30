#!/bin/bash

echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /sec
mkdir /ven

echo "Criando grupos de usuarios..."

groupadd GRP_ADM
groupadd GRP_SEC
groupadd GRP_VEN

echo "Criando usuarios..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio --m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

echo "Especificando permissoes dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_SEC /sec
chown root:GRP_VEN /ven

chmod 777 /publico
chmod 770 /adm
chmod 770 /sec
chmod 770 /ven

echo "Fim..."
