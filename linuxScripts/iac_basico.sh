#!/bin/bash


echo "Acessando diretório raiz..."
cd /

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados com sucesso!"

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados com sucesso!"

echo "Atualizando permissões de acesso a diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Permissões definidas!" 

echo "Criando usuários..."

useradd carlos -c "Carlos da Costa" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM
useradd maria -c "Maria de Jesus" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM
useradd joao -c "João Antonio de Lima" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM
useradd debora -c "Débora Fernanda Souza" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN
useradd sebastiao -c "Sebastião Pedroso" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -c "Roberto Andrade" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN
useradd josefina -c "Josefina Olinda" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC
useradd amanda -c "Amanda Bueno" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC
useradd rogerio -c "Rogério Almeida" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC

echo "Usuários criados com sucesso e atribuidos a seus respectivos grupos!"

echo "Resetando senhas dos usuários!"

passwd carlos -e
passwd maria -e
passwd joao -e
passwd debora -e
passwd sebastiao -e
passwd roberto -e
passwd josefina -e
passwd amanda -e
passwd rogerio -e

echo "Senhas resetadas com sucesso!"

echo "Utilize a senha padrão ( senha123 ) para cadastrar uma nova senha ao usuário."

echo "Script executado com sucesso!"
