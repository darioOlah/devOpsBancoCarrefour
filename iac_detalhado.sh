#!/bin/bash

echo "Acessando diretório raiz..."
cd /

echo "Criando diretórios do sistema..."

echo "...criando diretório Público"
mkdir /publico

echo "...criando diretório Administrativo"
mkdir /adm

echo "...criando diretório Vendas"
mkdir /ven

echo "...criando diretório Secretáriado"
mkdir /sec

echo "Diretórios criados com sucesso!"

echo "Criando grupos de permissões do sistema..."

echo "...criando grupo ADM"
groupadd GRP_ADM

echo "...criando grupo VEN"
groupadd GRP_VEN

echo "...criando grupo SEC"
groupadd GRP_SEC


echo "Grupos de permissões criados com sucesso!"

echo "Atualizando permissões de acesso a diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Permissões definidas!" 


echo "Criando usuários do sistema..."

echo "...criando usuário carlos"
useradd carlos -c "Carlos da Costa" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM

echo "...criando usuário maria"
useradd maria -c "Maria de Jesus" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM

echo "...criando usuário joao"
useradd joao -c "João Antonio de Lima" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_ADM

echo "...criando usuário debora"
useradd debora -c "Débora Fernanda Souza" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN

echo "...criando usuário sebastiao"
useradd sebastiao -c "Sebastião Pedroso" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN

echo "...criando usuário roberto"
useradd roberto -c "Roberto Andrade" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_VEN

echo "...criando usuário josefina"
useradd josefina -c "Josefina Olinda" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC

echo "...criando usuário amanda"
useradd amanda -c "Amanda Bueno" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC

echo "...criando usuário rogerio"
useradd rogerio -c "Rogério Almeida" -s /bin/bash -m -p $(openssl passwd senha123) -G GRP_SEC


echo "Usuários criados com sucesso e atribuidos a seus respectivos grupos!"

echo "Resetando senhas dos usuários..."

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
