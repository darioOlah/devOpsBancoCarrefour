#!/bin/bash

echo "Excluindo alterações anteriores realizadas no sistema"

cd /
ls -l

rm -Rf /publico/
rm -Rf /adm/
rm -Rf /ven/
rm -Rf /sec/
rm -Rf /carlos/
rm -Rf /maria/
rm -Rf /joao/
rm -Rf /debora/
rm -Rf /sebastiao/
rm -Rf /roberto/
rm -Rf /josefina/
rm -Rf /amanda/
rm -Rf /rogerio/


userdel -rf carlos
userdel -rf maria
userdel -rf joao
userdel -rf debora
userdel -rf sebastiao
userdel -rf roberto
userdel -rf josefina
userdel -rf amanda
userdel -rf rogerio

cat /etc/passwd

groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

cat /etc/group

echo "Alterações anteriores excluidas com sucesso!"
