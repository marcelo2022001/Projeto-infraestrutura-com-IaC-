#!/bin/bash

echo "Criando diretorio, favor não desligue o computador."

mkdir /publico
mkdir /admin
mkdir /vendas
mkdir /sec

echo "Criando Usuários."

groupadd GRP_ADMIN
groupadd GRP_VENDAS
groupadd GRP_SEC

echo "Criando usuários."

useradd carlos -c "Carlos Roberto" -m -s /bin/bash -p $(openssl passwd -crypt Senha 1253) -G GRP_ADMIN
useradd maria-c "Maraia da Silva" -m -s /bin/bash -p $(openssl passwd -crypt Senha 1263) -G GRP_ADMIN
useradd joana -c "Joana Pereira" -m -s /bin/bash -p $(openssl passwd -crypt Senha 1234) -G GRP_ADMIN

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha 1203) -G GRP_VENDAS
useradd sebastiao -m -s /bin/bash -p $(openssl passwd -crypt Senha 1523) -G GRP_VENDAS
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha 1293) -G GRP_VENDAS

useradd airton -c "Airton Gonçalves" -m -s /bin/bash -p $(openssl passwd -crypt Senha 1423) -G GRP_SEC
useradd gustavo -c "Gustavo Trevisa" -m -s /bin/bash -p $(openssl passwd -crypt Senha 1273) -G GRP_SEC
useradd jose -c "José Carlos" -m -s /bin/bash -p $(openssl passwd -crypt Senha 1238) -G GRP_SEC

echo "Adicionando/Especificando permissões..."

chown root:GRP_ADM /admin 
chown root:GRP_ADM /vendas
chown root:GRP_ADM /sec

chmod 770 /admin # 1 
chmod 770 /ven
chmod 770 /sec
chmod 770 /publico

echo "Fim ..."

# Sou um comentário

# Há, contudo, a possibilidade de realizar o mesmo procedimento usando o modo octal. 
# Neste modo, as permissões são compostas de oito níveis (0 a 7) e representadas por números, os quais indicam:

# 0 = nenhuma permissão;
# 1 = apenas executar;
# 2 = apenas gravar;
# 3 = gravar e executar;
# 4 = apenas ler;
# 5 = ler e executar;
# 6 = ler e gravar; e
#7 = ler, gravar e executar.

#Logo, o mesmo comando do exemplo anterior pode ser feito da seguinte forma no modo octal:

# chmod 764 arquivo1
# Observe que cada algarismo corresponde a cada uma das classes de usuários
# (User, Group e Other).
#    7     6      4