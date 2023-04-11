#!/bin/bash

# Função para executar cmake e make em um diretório
build_directory() {
    local dir="$1"
    cd "$dir"
    rm -rf *
    cmake ..
    make
    cd ..
}

# Remove o conteúdo das pastas builds_a e builds_b
rm -rf builds_a/*
rm -rf builds_b/*

# Entra em cada pasta e executa cmake e make
build_directory "builds_a"
build_directory "builds_b"

# Volta para a pasta raiz (assumindo que o script md5hash.sh está na mesma pasta que build_and_hash.sh)

# Executa o script md5hash.sh na pasta raiz (ajuste o caminho do script conforme necessário)
./md5hash.sh builds_a
./md5hash.sh builds_b

result=$(diff builds_a/hashes.txt builds_b/hashes.txt | grep hello)

if [ -z "$result" ]; then
    echo "As compilações possuem o mesmo hash"
else
    echo "As compilações possuem hashs diferentes"
    echo "$result"
fi