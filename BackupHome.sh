#!/bin/bash

DIRDEST=$HOME/Backup

if [ ! -d $DIRDEST ]
then
    echo "Criando $DIRDEST"
    mkdir -p $DIRDEST
fi

7DAYS=$(find $DIRDEST -ctime -7 -name backup_home\*tgz)

if [ "$7DAYS" ]
then
    echo "Já foi gerado um backup nos ultimos 7 dias."
    echo -n "Deseja continuar? (N/s)"
    read -n1 CONT
    echo
    if [ "$CONT" = N -o "$CONT" = n -o "$CONT" = "" ]
    then
        echo "Backup abordato"
        exit 1
    elif [ "$CONT" = S -o "$CONT" = s  ]
    then
        echo "Será realizado o backup"
    else
        echo "Opção invalida"
        exit 2
    fi
fi

echo "Criando o backup..."
ARQUIVO="backup_home_$(date +%Y%m%d%H%M).tgz"
tar zcvpf $DIRDEST/$ARQUIVO --exclude="$DIRDEST" "$HOME"/* > /dev/null

echo "Backup $ARQUIVO Criado "