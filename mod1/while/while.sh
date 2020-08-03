#!/usr/bin/env bash

Frutas=(
    'Banana'
    'Abacaxi'
    'Laranja'
    'Limão'
	'Jabuticaba'
)

# Forma 1
CONTADOR=0
while [[ $CONTADOR -lt ${#Frutas[@]} ]]; do
    echo $CONTADOR
    CONTADOR=$(($CONTADOR + 1))
done