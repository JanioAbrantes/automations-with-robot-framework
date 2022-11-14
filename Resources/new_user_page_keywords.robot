*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary   locale=pt_BR

*** Variables ***
${EMAIL}                jeovanio@thebug.com
${PASSWORD}             123456789

${NOVO_USUARIO_BUTTON}  //a[.='Novo usuário?']
${CADASTRAR_BUTTON}     class=btn-primary
${NAME_FIELD}           nome
${EMAIL_FIELD}          email
${PASSWORD_FIELD}       senha

*** Keywords ***
The user is in the "cadastro"'s page
    Click Element    ${NOVO_USUARIO_BUTTON}

The user inputs the username
    ${random_name}=          FakerLibrary.Name
    Input Text       ${NAME_FIELD}  ${random_name}

The user inputs the email
    ${random_email}=         FakerLibrary.Email
    Input Text       ${EMAIL_FIELD}  ${random_email}

The user inputs an already used email
    Input Text       ${EMAIL_FIELD}  ${EMAIL}

The user inputs the password
    ${random_pass}=          FakerLibrary.Password
    Input Text       ${PASSWORD_FIELD}  ${random_pass}

The user press the "Cadastrar" button
    Click Button     ${CADASTRAR_BUTTON}
