#!/bin/bash

echo -n "Digite o valor 1: "
read NUM1
echo  -n "Digite o valor 2: "
read NUM2

if [ ! $NUM1 ] || [ ! $NUM2 ]
then
    echo "Nenhum dos valores pode ser nulo"
    exit 1
fi

echo
echo "Escolha uma Operação:"
echo "1 = Soma"
echo "2 = Subtração"
echo "3 = Multiplicação"
echo "4 = Divisão"
echo "Q = Sair"
echo
read -p "Opção: " OPCAO

case $OPCAO in
    1)
        OPER="+"
        ;;
    2)  
        OPER="-"
        ;;
    3)
        if [ $NUM1 -eq 0 -o $NUM2 -eq 0 ]
        then
            echo "Um valor 0 não pode ser multiplicado"
            exit 1
        fi
        OPER="*"
        ;;
    4)
        if [ $NUM1 -eq o -o $NUM2 -eq 0 ]
        then
            echo "O valor zero não pode ser utilizado na divisão"
            exit 1
        fi
        if [ $(expr $NUM1 % $NUM2) -ne 0 ]
        then
            echo "Divisão com resto = $(expr $NUM1 % $NUM2)"
        else
            echo "Divisão exata"
        fi
        echo
        OPER="/"
        ;;
    Q)
        echo "Saindo"
        exit
        ;;
    *)
        echo "Opção invalida"
        exit 1
        ;;
esac

echo "$NUM1 $OPER $NUM2 = $(expr $NUM1 "$OPER" $NUM2)"
