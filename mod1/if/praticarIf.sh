#!/usr/bin/env bash

IDADE=$1
IDADE_PERM=18

[ "$IDADE" = "$IDADE_PERM" ] && echo "Pode dirigir" || echo "Não pode dirigir"
