#!/bin/bash


until  ps aux | grep docker | grep -v grep > /dev/null
do
    echo "Inicie o Docker"
    sleep 3
done

echo "Docker iniciado"
echo "PID: $(pgrep docker)"