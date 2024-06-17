#!/bin/bash

# docker-manager: Script para gerenciar containers Docker com um prefixo específico
#
# Uso:
#   docker-manager <start|stop> <prefixo>
#
# Exemplos:
#   docker-manager start enova   # Inicia todos os containers com prefixo 'enova'
#   docker-manager stop enova    # Para todos os containers com prefixo 'enova'
#
# Opções:
#   -h, --help    Mostra esta mensagem de ajuda

ACTION=$1
PREFIX=$2

function show_help {
  echo "docker-manager: Script para gerenciar containers Docker com um prefixo específico"
  echo ""
  echo "Uso:"
  echo "  docker-manager <start|stop> <prefixo>"
  echo ""
  echo "Exemplos:"
  echo "  docker-manager start enova   # Inicia todos os containers com prefixo 'enova'"
  echo "  docker-manager stop enova    # Para todos os containers com prefixo 'enova'"
  echo ""
  echo "Opções:"
  echo "  -h, --help    Mostra esta mensagem de ajuda"
}

if [ "$ACTION" == "-h" ] || [ "$ACTION" == "--help" ]; then
  show_help
  exit 0
fi

if [ -z "$ACTION" ] || [ -z "$PREFIX" ]; then
  show_help
  exit 1
fi

if [ "$ACTION" != "start" ] && [ "$ACTION" != "stop" ]; then
  echo "Ação inválida: $ACTION. Use 'start' ou 'stop'."
  exit 1
fi

docker ps -a --filter "name=${PREFIX}" --format "{{.Names}}" | xargs -I {} docker $ACTION {}
