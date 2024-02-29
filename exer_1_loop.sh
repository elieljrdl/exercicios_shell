#!/bin/bash

OLDIFS=$IFS
IFS=$'\n'
echo -e "USUARIO\t\tUID\t\tDESCRICAO\t\tDIRETORIO"
for i in $(cat /etc/passwd)
do
    USERID=$(echo $i | cut -d":" -f3)
    if [ $USERID -ge 1000 -a $USERID -le 60000 ]
    then
        USER=$(echo $i | cut -d":" -f1)
        USERDESC=$(echo $i | cut -d":" -f5 | tr -d ',')
        USERDIR=$(echo $i | cut -d":" -f6 )
        echo -e "$USER\t\t$USERID\t\t$USERDESC\t\t$USERDIR"

    fi
done

IFS=$OLDIFS