*** Settings ***
Resource    ${EXECDIR}/resources/page_objects.robot
Library     FakerLibrary    locale=pt_BR
***Keywords***
Quando preencho os campos corretamente
  ${faker_name}     FakerLibrary.FirstName
  ${faker_email}    FakerLibrary.Email
  Set Global Variable   ${faker_email}

  Wait Until Element Is Visible      ${txt_firstName}    
  Input Text                         ${txt_firstName}     ${faker_name}
  Input Text                         ${txt_lastName}      ${lastname}
  Input Text                         ${txt_email}         ${faker_email}
  Input Text                         ${txt_password}      ${password}

E aceito os termos de uso
  Click Element                      ${ck_userTerms}

E Clico em SignUp
  Wait Until Element Is Visible      ${signUp}
  Click Element                      ${signUp}
  Capture Page Screenshot

Quando faco login com a conta criada recentemente
  Wait Until Element Is Visible      ${txt_email} 
  Input Text                         ${txt_email}          ${faker_email}
  Input Text                         ${txt_password}       ${password}
  Click Element                      ${signIn}
  Capture Page Screenshot

Entao devo validar o usuario logado
  Wait Until Page Contains            text=Products
  Capture Page Screenshot

Quando tendo me cadastrar sem preencher os campos
  Wait Until Element Is Visible      ${signUp}
  Click Element                      ${signUp}
  Capture Page Screenshot

Entao devera aparecer as mensagem de validacao na tela de cadastro
  Wait Until Page Contains  text=${msg_error_emailBlank}
  Wait Until Page Contains  text=${msg_error_terms}
  Wait Until Page Contains  text=${msg_error_email}
  Wait Until Page Contains  text=${msg_error_fieldBlank}
  Wait Until Page Contains  text=${msg_error_firstName}
  Wait Until Page Contains  text=${msg_error_lastName}
  Capture Page Screenshot

Quando tendo fazer o login sem preencher os campos
  Wait Until Element Is Visible      ${signIn}
  Click Element                      ${signIn}
  Capture Page Screenshot
 
Entao devera aparecer as mensagem de validacao na tela de Login
  Wait Until Page Contains  text=${msg_error_Invalid_Email_Password}