#!/bin/bash

echo "Criando diretórios!"

mkdir /public
mkdir /adm
mkdir /primary
mkdir /second

echo "Criando grupos de usuários!"

groupadd GRP_ADM
groupdadd GRP_PRIMARY
groupdadd GRP_SECOND

echo "Criando usuários!"

useradd mario -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd marcos -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd favio -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

useradd angelo -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_PRIMARY
useradd maria -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_PRIMARY
useradd jose -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_PRIMARY

useradd arantes -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SECOND
useradd ana -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SECOND
useradd josefina -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SECOND

echo "Permissões concedidas!"

chown root:GRP_ADM /ADM
chown root:GRP_PRIMARY /primary
chown root:GRP_SECOND /second

chmod 770 /adm
chmod 770 /primary
chmod 770 /second
chmod 777 /public

echo "Finalizado com sucesso!"