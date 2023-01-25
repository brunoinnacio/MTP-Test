*** Settings ***
Resource    ${EXECDIR}/resources/keywords.robot
Resource    ${EXECDIR}/resources/suit_setup.robot

Documentation
...  Esses cenarios consistem em automatizar a criacao de um usuario e depois se logar com o mesmo no sistema.
...  Além disso, está sendo validado as mensagens de validacao dos campos de cadastro e login.

***Test Cases***
Criar Conta
    Dado que esteja na tela de cadastro
    Quando preencho os campos corretamente
    E aceito os termos de uso
    E Clico em SignUp
    Fechar Navegador 
Logar com usuario criado
    Dado que esteja na tela de login
    Quando faco login com a conta criada recentemente
    Entao devo validar o usuario logado
    Fechar Navegador 
Validar mensagens dos campos do cadastro
    Dado que esteja na tela de cadastro
    Quando tendo me cadastrar sem preencher os campos
    Entao devera aparecer as mensagem de validacao na tela de cadastro
    Fechar Navegador
Validar mensagens tela de login
    Dado que esteja na tela de login
    Quando tendo fazer o login sem preencher os campos
    Entao devera aparecer as mensagem de validacao na tela de Login
    Fechar Navegador