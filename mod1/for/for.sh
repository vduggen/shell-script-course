#!/usr/bin/env bash

# Forma 1 
echo "Forma 1"
for ((i = 0; i < 10; i++)); do
	echo $i
done

echo "=============================="

# Forma 2
echo "Forma 2"
for i in $(seq $1); do
	echo $i
done

echo "=============================="

# Forma 3
echo "Forma 3 (array)"
Frutas=(
	'Laranja'
	'Ameixa'
	'Banana'
	'Abacaxi'
)

for i in "${Frutas[@]}"; do
	echo $i
done