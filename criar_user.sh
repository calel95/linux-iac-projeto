#!/bin/bash

echo "Criando usuário do sistema..."

useradd guest1 -c "usuario convidado" -s /bin/bash -m -p $(openssl passwd  Senha123)
passwd guest1 -e

useradd guest2 -c "usuario convidado" -s /bin/bash -m -p $(openssl passwd  Senha123)
passwd guest2 -e

useradd guest3 -c "usuario convidado" -s /bin/bash -m -p $(openssl passwd  Senha123)
passwd guest3 -e

useradd guest4 -c "usuario convidado" -s /bin/bash -m -p $(openssl passwd  Senha123)
passwd guest4 -e

echo "Usuarios cadastrados! do arquivo criar_user"
