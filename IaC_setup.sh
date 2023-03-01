#!/bin/bash

echo .
echo ---------------------------
echo .Início "./IaC_setup"
echo .
echo .Se você NÃO utilizou o script "./IaC.sh", pressione CTRL-C agora!
echo .ou, espere 5 segundos para a continuação deste script

sleep 5s

echo .
echo .Criação dos diretórios compartilhados, grupos e usuário.
echo .
echo ==========
echo .Criando diretórios /publico /adm /ven /sec
echo .
#
sudo mkdir /publico /adm /ven /sec

echo .
echo .Modificando o proprietário dos diretórios /publico /adm /ven /sec
echo .
#
sudo chown  root /publico
sudo chown  root /adm
sudo chown  root /ven
sudo chown  root /sec

echo .
echo ==========
echo Criando grupos GRP_ADM GRP_VEN GRP_SEC
echo .
#
sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

echo .
echo .Atribuindo os grupos GRP_ADM GRP_VEN GRP_SEC às respectivas pastas
echo .
#
sudo chgrp GRP_ADM /adm
sudo chgrp GRP_VEN /ven
sudo chgrp GRP_SEC /sec

echo .
echo .Atribuindo as permissões aos diretórios /publico /adm /ven /sec
echo .
#
sudo chmod 777 /publico
sudo chmod 770 /adm
sudo chmod 770 /ven
sudo chmod 770 /sec

echo .
echo =========
echo .Criando usuários e pastas. Configurando os grupos de carlos maria joao 
echo .debora sebastiana roberto josefina amanda rogerio   
echo .
echo .Senha inicial é 123456 e deve ser trocada no primeiro logon
echo .
#
sudo useradd carlos -m -s /bin/bash -c "Carlos"  -p $(openssl passwd -6 123456)
sudo useradd maria -m -s /bin/bash -c "Maria"  -p $(openssl passwd -6 123456)
sudo useradd joao -m -s /bin/bash -c "Joao"  -p $(openssl passwd -6 123456)

sudo usermod -G GRP_ADM carlos
sudo usermod -G GRP_ADM maria
sudo usermod -G GRP_ADM joao

sudo passwd carlos -e
sudo passwd maria -e
sudo passwd joao -e

sudo useradd debora -m -s /bin/bash -c "Debora"  -p $(openssl passwd -6 123456)
sudo useradd sebastiana -m -s /bin/bash -c "Sebastiana"  -p $(openssl passwd -6 123456)
sudo useradd roberto -m -s /bin/bash -c "Roberto"  -p $(openssl passwd -6 123456)

sudo usermod -G GRP_VEN debora
sudo usermod -G GRP_VEN sebastiana
sudo usermod -G GRP_VEN roberto

sudo passwd debora -e
sudo passwd sebastiana -e
sudo passwd roberto -e

sudo useradd josefina -m -s /bin/bash -c "Debora"  -p $(openssl passwd -6 123456)
sudo useradd amanda -m -s /bin/bash -c "Amanda"  -p $(openssl passwd -6 123456)
sudo useradd rogerio -m -s /bin/bash -c "Rogerio"  -p $(openssl passwd -6 123456)

sudo usermod -G GRP_SEC josefina
sudo usermod -G GRP_SEC amanda
sudo usermod -G GRP_SEC rogerio

sudo passwd josefina -e
sudo passwd amanda -e
sudo passwd rogerio -e

echo .
echo .
echo .Fim "./IaC_setup.sh"
echo ------------------------------------
