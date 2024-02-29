#!/bin/bash

for i in /home/eliellopes/CursoShellScript/arquivos/*
do
    if [ -f $i ]
    then
        echo "Verificando o arquivo $i"
        LINHAS=$(cat $i | wc -l)
        echo "O arquivo $i tem $LINHAS linhas"
        echo
    fi
done
