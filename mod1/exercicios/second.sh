#!/usr/bin/env bash

CONTADOR=0
NUM_MAX=10
while [[ $CONTADOR -lt $NUM_MAX ]]; do
    [ $(($CONTADOR % 2)) = 0 ] && echo "É divisivel por 2, É o numero é $CONTADOR"
    CONTADOR=$(($CONTADOR + 1))
done