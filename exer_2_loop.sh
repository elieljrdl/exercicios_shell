#!/bin/bash

for i in $(cat /etc/passwd)
do
    USERID=$(echo $i | cut -d":" -f3)
    if [ $USERID -ge 1000 -a $USERID -le 60000 ]
    then
        USER=$(echo $i | cut -d":" -f1)
        QTDTXT=$(find /home/$USER -type f -name "*.txt" | wc -l)

        echo "Usuario $USER:"
        echo "Quantidade de Arquivo TXT: $QTDTXT"
        echo
    fi   
done