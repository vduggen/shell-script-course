#!/usr/bin/env bash
#
# counterUsers.sh - Conta os usuários que estão logados no sistema
#
# Site:       https://4fasters.com.br
# Autor:      Vitor Luiz Duggen
# Manutenção: Vitor Luiz Duggen
#
# ------------------------------------------------------------------------ #
# Este programa irá listar todos os usuários que estiverem logados no sistema
#
#  Exemplos:
#      $ ./counterUsers.sh ls -lh 10
#      Neste exemplo o script irá listar 10 usuários por vez.
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 03/10/2018, Mateus:
#       - Início do programa
#       - Conta com a funcionalidade X
#   v1.1 10/10/2018, Lucas:
#       - Alterado parametro XXXXX
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 5.0.17
# ------------------------------------------------------------------------ #
# Agradecimentos:
#
# 	Joãozinho - Encontrou um bug na parte de login.
#	Mariazinha - Enviou uma sugestão de adicionar o -h.
# ------------------------------------------------------------------------ #

# ------------------------------- VARIÁVEIS -------------------------------#
  NUMBER_MIN=0
  NUMBER_MAX=100
# ------------------------------------------------------------------------ #

# ------------------------------- FUNÇÕES -------------------------------- #
  [ $NUMBER_MIN -ge $NUMBER_MAX ] && exit 1

	for i in $(seq $NUMBER_MIN $NUMBER_MAX);do
		for j in $(seq $i $NUMBER_MAX);do
			printf "*";
		done;
		
		printf "\n";
	done    
# ------------------------------------------------------------------------ #

