#!/bin/bash

echo "Criando os diretórios"
mkdir /publico
mkdir /adm
mkdir /analista
mkdir /engenharia

echo "Diretórios criado!"

echo "Criando os Grupos"
groupadd grupo_adm
groupadd grupo_analista
groupadd grupo_engenharia

echo "grupos criados!"

echo "criando os usuários e atribuindo já seus grupos"
useradd carlos -c "Carlos ADM" -m -s /bin/bash -p $(openssl passwd senha123) -G grupo_adm
useradd maria -c "Maria ADM" -m -s /bin/bash -p $(openssl passwd senha123) -G grupo_adm
useradd joao -c "Joao ADM" -m -s /bin/bash -p $(openssl passwd senha123) -G grupo_adm
useradd debora -c "Debora Engenheira" -m -s /bin/bash -p $(openssl passwd senha123) -G grupo_engenharia
useradd sebastiana -c "Sebastiana Engenheira" -m -s /bin/bash -p $(openssl passwd senha123) -G grupo_engenharia
useradd roberto -c "Roberto Engenharia" -m -s /bin/bash -p $(openssl passwd senha123) -G grupo_engenharia
useradd josefina -c "Josefina Analista" -m -s /bin/bash -p $(openssl passwd senha123) -G grupo_analista 
useradd amanda -c "Amanda Analista" -m -s /bin/bash -p $(openssl passwd senha123) -G grupo_analista
useradd rogerio -c "Rogério Analista" -m -s /bin/bash -p $(openssl passwd senha123) -G grupo_analista

echo "Usuarios criados e atribuidos nos grupos"

echo "adicionando os grupos nos diretórios"
chown :grupo_engenharia /engenharia
chown :grupo_analista /analista

echo "grupos adicionados nos diretórios!"

echo "atribuindo as permissoes dos diretórios"
chmod 777 /publico
chmod 770 /engenharia
chmod 770 /analista

echo "Script finalizado!"

