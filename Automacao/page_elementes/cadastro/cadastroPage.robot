***Variables***
#Massa de dados fixos
${lastname}       jw
${password}       12345678

#ELEMENTOS MAPEADOS NA TELA PARA INTERACAO
${txt_firstName}        id:user[first_name]
${txt_lastName}         id:user[last_name]
${txt_email}            id:user[email]
${txt_password}         id:user[password]
${ck_userTerms}         id:user[terms]
${signUp}               xpath://button[@type='submit'][contains(.,'Sign up')]
${signIn}               xpath://button[@type='submit'][contains(.,'Sign in')]

#Mensagens de erro na tela de cadastro
${msg_error_email_PleaseEnterValidEmail}    Please enter a valid email address
${msg_error_emailInvalid}    Email is invalid
${msg_error_emailBlank}      Email can't be blank
${msg_error_terms}           Terms must be accepted
${msg_error_email}           Password can't be blank
${msg_error_fieldBlank}      This field cannot be blank
${msg_error_firstName}       First name can't be blank
${msg_error_lastName}        Last name can't be blank

#Mensagem de erro tela de login
${msg_error_Invalid_Email_Password}   Invalid email or password.