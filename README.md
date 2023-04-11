## Sobre o projeto
Aqui temos uma ferramenta que compila o código e em sequencia retira o hash. Dai verifica se o hash é compatível ou não.
Esse modelo foi baseado em https://blog.conan.io/2019/09/02/Deterministic-builds-with-C-C++.html

Existem algumas outras ferramentas que podem fazer isso de maneira mais eficiente, por enquanto, esse projeto serve como aprendizagem pessoal.

## Sobre as pastas e arquivos
```./builds_a``` Refere-se ao resultado da primeira compilação.
```./builds_b``` Refere-se ao resultado da segunda compilação
```./builds_x/hashes.txt``` Resultado dos hashes dos arquvios de cada pasta

Os seguintes arquivos referem-se a uma estrutura genérica em cpp:
```hello_world.cpp``` ```hello_world.hpp``` ```main.cpp```

```CmakeLists.txt``` Referente ao uso do cmake para executar a compilação dos arquivos.

```md5hash.sh``` Responsável por retirar os hashs dos arquivos compilados

```build_and_hash.sh``` Arquivo principal desse repositório, execute-o para compilar o código nos arquivos de cpp e em sequencia você verá no terminal o hash e se os hash são diferentes ou não.

## Sobre compilação deterministica 
https://reproducible-builds.org/citests/