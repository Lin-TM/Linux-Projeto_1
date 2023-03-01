#!/bin/bash

echo .
echo ----------------------------- 
echo .Início "./IaC_clear.sh"
echo .
echo .Se você NÃO utilizou o script "./IaC.sh", pressione CTRL-C agora!
echo .ou, espere 5 segundos para a continuação deste script

sleep 5s

echo .
echo .Remoção de toda estrutura: arquivos, diretório, grupos e usuários
echo ==========
echo .Removendo diretórios e seus arquivos: /publico /adm /ven /sec
echo .
#
sudo chmod -R 777 /publico
#chown -R root /publico/*
sudo rm -rf /publico

sudo chmod -R 777 /adm
#chown -R root /adm/*
sudo rm -rf /adm

sudo chmod -R 777 /ven
#chown -R root /ven/*
sudo rm -rf /ven

sudo chmod -R 777 /sec
#chown -R root /sec/*
sudo rm -rf /sec

echo ==========
echo .Removendo usuários e seus arquivos: carlos maria joao debora sebastiana roberto josefina amanda rogerio   
echo .
#
sudo userdel -fr carlos
sudo userdel -fr maria
sudo userdel -fr joao

sudo userdel -fr debora
sudo userdel -fr sebastiana
sudo userdel -fr roberto

sudo userdel -fr josefina
sudo userdel -fr amanda
sudo userdel -fr rogerio

echo ==========
echo .Removendo os grupos GRP_ADM GRP_VEN GRP_SEC
echo .
#
sudo groupdel -f GRP_ADM
sudo groupdel -f GRP_VEN
sudo groupdel -f GRP_SEC

echo .
echo .Fim ./IaC_clear.sh
echo --------------------------------------

