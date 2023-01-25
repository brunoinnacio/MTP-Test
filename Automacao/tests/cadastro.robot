*** Settings ***
Resource    /Users/macbookpro/Automacao/MTP-Test/Automacao/resources/keywords.robot
Resource    /Users/macbookpro/Automacao/MTP-Test/Automacao/resources/suit_setup.robot
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
    Quando tendo fazer o login sem preencher os campos
    Entao devera aparecer as mensagem de validacao
    Fechar Navegador



