#!/bin/bash

# Verifica se o diretório foi fornecido como argumento
if [ -z "$1" ]; then
    echo "Uso: $0 <diretório>"
    exit 1
fi

# Navega até o diretório fornecido
cd "$1"

# Cria o arquivo de saída
output_file="hashes.txt"
rm -f "$output_file"

# Itera sobre todos os arquivos no diretório
for file in *; do
    # Verifica se é um arquivo e não um diretório
    if [ -f "$file" ]; then
        # Calcula o hash MD5 e salva no arquivo de saída
        md5sum "$file" >> "$output_file"
    fi
done

echo "Os hashes MD5 foram salvos em $1/$output_file"