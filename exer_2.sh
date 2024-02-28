#!/bin/bash
#
#
# Crie um script que gere um relatório de algumas informações da máquina atual:
# Nome da Máquina
# Data e Hora Atual
# Desde quando a máquina está ativa
# Versão do Kernel
# Quantidade de CPUs/Cores
# Modelo da CPU
# Total de Memória RAM Disponível
# Partições
#
#
HOSTNAME=$(hostname)
KERNEL=$(uname -r)
UPTIME=$(uptime -s)
CPUCORE=$(cat /proc/cpuinfo | grep "model name" | wc -l)
CPUMODEL=$(cat /proc/cpuinfo | grep "model name" | cut -d : -f2 | head -n 1)
MEMTOTAL=$(free  --mega | grep "Mem" | cut -d " " -f13)
DISCO=$(df -h | egrep -v '(tmpfs|udev)')
clear
echo "================================="
echo "Relatorio da maquina: $HOSTNAME"
echo "Data e hora: $(date)"
echo "================================="
echo ""
echo "Maquina ativa desde $UPTIME"
echo "Versão do Kernel: $(uname -r)"
echo ""
echo "Quantidade de CPUs: $CPUCORE"
echo "Modelo da CPU:$CPUMODEL"
echo ""
echo "Memoria Total: $MEMTOTAL MB"
echo ""
echo "Partições:"
echo "$DISCO"






