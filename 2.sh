#!/bin/bash

contadorL=0
contadorW=0
procL=0
procW=0

while read linea
    do  
    col2=`echo $linea | awk '{print $2}'`
    col3=`echo $linea | awk '{print $3}'`
        if [ $col2 = "Linux" ] 
        then
        contadorL=$((contadorL+1))
        procL=$((procL+col3))
        else
        contadorW=$((contadorW+1))
        procW=$((procW+col3))
        fi
    done < listado.txt

    echo "Linux-> $contadorL $procL"
    echo "Windows-> $contadorW $procW"