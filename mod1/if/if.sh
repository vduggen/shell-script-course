#!/usr/bin/env bash

VAR1=""
VAR2=""

# Forma 1
if [[ $VAR1 = $VAR2 ]]; then
    echo "São iguais."
fi

# Forma 2
if [[ $VAR1 = $VAR2 ]]
then
    echo "São iguais."
fi

# Forma 3
if [ $VAR1 = $VAR2 ]
then
    echo "São iguais."
fi

# Forma 4
if test $VAR1 = $VAR2; then
    echo "São iguais."
fi

# Forma 5
if test $VAR1 = $VAR2
then
    echo "São iguais."
fi

# Forma 6
# Se tiver apenas 1 condição usa-se isto
# Boa prática
[ $VAR1 = $VAR2 ] && echo "São Iguais."

# Forma 7
# Se a condição for falsa
# Boa prática
[ $VAR1 = $VAR2 ] || echo "São Iguais."