*** Settings ***
Library             SeleniumLibrary

*** Keywords ***

Dado que esteja na tela de cadastro
    Open Browser                https://courses.ultimateqa.com/users/sign_up       browser=chrome
    Maximize Browser Window
    
Dado que esteja na tela de login
    Open Browser                https://courses.ultimateqa.com/users/sign_in       browser=chrome
    Maximize Browser Window

Fechar Navegador     
    Close Browser