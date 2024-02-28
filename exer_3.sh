#!/bin/bash
#
#
#

USER=$1
IDUSER=$(id -u "$USER")
NOMEUSER=$(cat /etc/passwd | grep $USER | cut -d : -f5)
TAMANHODIR=$(du -sh /home/$USER | cut -f1)
ULTIMOLOGIN=$(lastlog | grep $USER)
clear
echo "=================================================="
echo "Relatorio do Usuário: $USER"
echo ""
echo "UID: $IDUSER"
echo "Nome ou Descrição: $NOMEUSER"
echo ""
echo "Total usado no /home/$USER: $TAMANHODIR"
echo ""
echo "Último Login:"
echo "$ULTIMOLOGIN"
echo "==================================================="

