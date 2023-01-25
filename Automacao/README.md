## README
## Projeto de Automação de Testes 
### Objetivo do projeto
Desenvolver scripts de teste utilizando Robot Framework


## Setup do projeto
### Pré requisitos:
[Python 3](https://www.python.org/downloads/release/python-375/) (O projeto foi desenvolvido utilizando a versão 3.10.6)  
[Git](https://git-scm.com/download/win)

Downloads:
Chromedriver: https://chromedriver.chromium.org/downloads

## Instalando dependências
Dentro do projeto existe um arquivo `requirements.txt` que contém todas as dependências do projeto.
Instale-as em seu ambiente usando o comando:

> pip install -r requirements.txt


## Executando o projeto
Sempre através de linha de comando, basta informar o path do teste.
> robot -d ./Results tests/cadastro.robot

## Estrutura
> Dentro da Pasta Keyword: Foi criado uma subpasta com o arquivo cadastro_kws.robot onde inserimos todas as keywords

> Dentro da Pasta PAGE_ELEMENTES: Foi criado uma subpasta com o arquivo cadastroPage.robot onde fica todos os elementos mapeados como xpath, id etc...

> Dentro da Pasta RESOURCE é feita interacao com todas as telas mapeadas do sistema

> A pasta TESTS é onde criamos todos os testes cases

> Pasta RESULTS fica armazenando todos os logs do sistema
