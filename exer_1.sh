#!/bin/bash
#
#Crie um Script que após executado solicite dois valores como entrada. Esses valores devem ser somados e o resultado exibido para o usuário.
#
#

read -p "Digite o numero desejavel: " NUM1
read -p "Digite o segundo numero desejavel: " NUM2

SOMA=$(($NUM1 + $NUM2))

echo "A soma dos dois numero é: $SOMA"
