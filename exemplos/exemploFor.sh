#!/bin/bash

clear
read -p "Infore o inicio da sequencia: " INICIO
read -p "Infore o final da sequencia: " FINAL

for i in $(seq "$INICIO" "$FINAL")
do
    echo "exibindo o valor $i"
done