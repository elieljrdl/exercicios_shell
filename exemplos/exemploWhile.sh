#!/bin/bash

clear
read  -p "informe o limite de processos: " MAXIMO

while [ $(ps aux | wc -l) -le $MAXIMO ]
do
    echo "Processo ativo: $(ps aux | wc -l)"
    echo "Tudo ok"
    sleep 3
done

echo "O numero de processo passou de $MAXIMO"
echo "Verifique o sistema"