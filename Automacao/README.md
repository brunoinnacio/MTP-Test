# README
## Projeto de Automação de Testes 
Desenvolver scripts de teste utilizando Robot Framework

## Setup do projeto
### Pré requisitos:
[Python 3](https://www.python.org/downloads/release/python-375/) (O projeto foi desenvolvido utilizando a versão 3.10.0)  
[Git](https://git-scm.com/download/win)

## Instalando dependências
Dentro do projeto existe um arquivo `requirements.txt` que contém todas as dependências do projeto.
Instale-as em seu ambiente usando o comando: pip install -r requirements.txt


## Executando o projeto WEB
Sempre através de linha de comando, basta informar o path do teste.
robot -d ./Results Automacao/tests/cadastro.robot

## Estrutura
--> Dentro da Pasta Keyword: Foi criado uma subpasta com o arquivo cadastro_kws.robot onde inserimos todas as keywords
--> Dentro da Pasta page_elementes: Foi criado uma subpasta com o arquivo cadastroPage.robot onde fica todos os elementos mapeados como xpath, id etc...

--> Dentro da Pasta Resource é feita interacao com todas as telas mapeadas do sistema
--> A pasta tests é onde criamos todos os testes cases
--> Pasta results fica armazenando todos os logs do sistema
