#!/bin/bash

echo =============================================
echo . Início de ./IaC.sh
echo .
echo . Chamando script "./IaC_clear.sh" para remover os diretórios, 
echo . usuários e grupos
echo .

./IaC_clear.sh

echo .
echo . Chamando script "./IaC_setup.sh" para criar os diretórios, 
echo . grupos e usuários. Configurando todas as permissões e a senha 
echo . inicial 123456, que deve ser trocada no primeiro logon
echo .

./IaC_setup.sh

echo .
echo .Fim de ./IaC.sh
echo ===================================================
