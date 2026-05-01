#!/bin/bash

# Verifica se a mensagem de commit foi passada como argumento
if [ -z "$1" ]; then
    echo "Erro: É necessário informar a mensagem do commit."
    echo "Uso: $0 \"Sua mensagem de commit aqui\""
    exit 1
fi

echo "Adicionando os arquivos..."
git add .

echo "Realizando o commit com a mensagem: '$1'..."
git commit -m "$1"

echo "Enviando para o repositório remoto..."
git push

echo "Pronto! Arquivos enviados com sucesso."
