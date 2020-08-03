#!/usr/bin/env bash
#
# listaUsuarios.sh - extrai usuários do /etc/passwd
#
# Site:       https://4fasters.com.br
# Autor:      Vitor Luiz Duggen
# Manutenção: Vitor Luiz Duggen
#
# ------------------------------------------------------------------------ #
# Irá extrair usuários do /etc/passwd, havendo a possibilidade de colocar
# em maiúsculo e em ordem alfabética.
#
#  Exemplos:
#      $ ./listarUsuarios.sh -s -m
#      Neste exemplo irá ficar em maiúsculo e em ordem alfabética
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 03/07/2020, Vitor:
#       - Adicionado as flags -h, -v, -s, -l
#
#   v1.1 03/07/2020, Vitor:
#       - Trocamos o IF pelo CASE
#       - Adicionamos o basename
#
#   v1.2 03/07/2020, Vitor:
#       - Adicionado -c
#       - Adicionado 2 flags
#
#   v1.3 03/07/2020, Vitor:
#       - Adicionado while com shift e teste de variável
#       - Adicionado 2 flags
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 5.0.17
# ------------------------------------------------------------------------ #

# ------------------------------- VARIÁVEIS -------------------------------#
  COMMAND_LIST_USERS="$(cat /etc/passwd | cut -d : -f 1)"
  MESSAGE_USE="
    List Users - [OPTIONS]

    -h - Help Menu
    -help - Help Menu

    -v - Version
    -version - Version

    -r - List of random users
    -random - List of random users

    -s - List of ordered users
    -sort - List of ordered users

    -c - Capital User List
    -capital - Capital User List
  "
  VERSION="v1.3"
  KEY_LIST_ORDED=0
  KEY_LIST_CAPITAL=0

# ------------------------------------------------------------------------ #

# ------------------------------- TESTES --------------------------------- #

# ------------------------------------------------------------------------ #

# ------------------------------- FUNÇÕES -------------------------------- #

# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ------------------------------- #
  while test -n "$1";do
    case "$1" in 
      -h) echo "$MESSAGE_USE" && exit 0;;
      -help) echo "$MESSAGE_USE" && exit 0;;

      -v) echo "$VERSION" && exit 0;;
      -version) echo "$VERSION" && exit 0;;

      -r) echo "$COMMAND_LIST_USERS" && exit 0;;
      -random) echo "$COMMAND_LIST_USERS" && exit 0;;

      -s) KEY_LIST_ORDED=1;;
      -sort) KEY_LIST_ORDED=1;;

      -c) KEY_LIST_CAPITAL=1;;
      -capital) KEY_LIST_CAPITAL=1;;

      *) echo "Command not found $MESSAGE_USE" && exit 1;;
    esac
    shift
  done

  [ $KEY_LIST_ORDED -eq 1 ] && COMMAND_LIST_USERS=$(echo "$COMMAND_LIST_USERS" | sort)
  [ $KEY_LIST_CAPITAL -eq 1 ] && COMMAND_LIST_USERS=$(echo "$COMMAND_LIST_USERS" | tr [a-z] [A-Z])

  [[ $KEY_LIST_CAPITAL -eq 1 || $KEY_LIST_ORDED -eq 1 ]] && echo "$COMMAND_LIST_USERS"

  echo "$MESSAGE_USE"
# ------------------------------------------------------------------------ #
