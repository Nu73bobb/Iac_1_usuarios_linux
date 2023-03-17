#!/bin/bash
#
echo "Iniciando"
#
echo "Criando Diretorios na Raiz"
mkdir  /publico/ /adm/ /ven/ /sec/
echo "Diretórios Criados na Raiz"
#
echo "Criando Grupos"
groupadd GRP-ADM 
groupadd GRP-VEN
groupadd GRP-SEC
echo "Grupos criados"
#
echo "Criando Usuários com Senha e Adicionando ao Grupo GRP-ADM"
useradd carlos -m -c "Carlos de Paiva" -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP-ADM 
useradd maria -m -c "Maria do Socorro" -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP-ADM
useradd joao -m -c "Joáo de Deus" -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP-ADM 
echo "Usuário Criado e Adicionado ao Grupo GRP-ADM"
#
#echo "Solicitar Nova Senha GRP-ADM"
passwd -e carlos
passwd -e maria
passwd -e joao
#echo "Nova Senha Solicitada"
#
echo "Criando Usuários com Senha e Adicionando ao Grupo GRP-VEN"
useradd debora -m -c "Débora de Andrade" -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP-VEN
useradd sebastiana -m -c "Sebastiana de Jesus" -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP-VEN
useradd roberto -m -c "Roberto de Souza" -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP-VEN
echo "Usuário Criado e Adicionado ao Grupo GRP-VEN"
#
#echo "Solicitar Nova Senha GRP-VEN"
passwd -e debora
passwd -e sebastiana
passwd -e roberto
#echo "Nova Senha Solicitada"
#
echo "Criando Usuários com Senha e Adicionando ao Grupo GRP-SEC"
useradd josefina -m -c "Josefina de Castro" -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP-SEC
useradd amanda -m -c "Amanda de Almeida" -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP-SEC
useradd rogerio -m -c "Rogério de Castro" -s /bin/bash -p $(openssl passwd -crypt 123456) -G GRP-SEC 
echo "Usuário Criado e Adicionado ao Grupo GRP-SEC"
#
#echo "Solicitar Nova Senha GRP-SEC"
passwd -e josefina
passwd -e amanda
passwd -e rogerio
#echo "Nova Senha Solicitada"
#
echo "Transferindo Diretórios para os seus Respectivos Grupos"
chown root:GRP-ADM /adm/
chown root:GRP-VEN /ven/
chown root:GRP-SEC /sec/
echo "Diretórios Transferidos para seus Respectivos Grupos"
#
echo "Trocando a Permissão para os Usuários"
chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/
echo "Permissão para Usuários do Grupo Trocada"
#
echo "Finalizado"
