#!/bin/bash

contadorP=0
contadorI=0
while read numero
do
    div=$((numero%2))
    if [ $div -eq 0 ]; then
        contadorP=$((contadorP + 1))
        totalP=$(($totalP + $numero))
        echo "$contadorP $numero"
    fi
done < numeros.txt

echo "-----------"

while read numero
    do
    div=$((numero%2))
    if [ $div -ne 0 ]; then
        contadorI=$((contadorI + 1))
        totalI=$(($totalI + $numero))
        echo $contadorI "-" $numero 
    fi
    done < numeros.txt
        echo "El total par es" $totalP
        echo "El total impar" $totalI

