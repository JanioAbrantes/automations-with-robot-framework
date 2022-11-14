*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary   locale=pt_BR

*** Variables ***
${EMAIL}                jeovanio@thebug.com
${PASSWORD}             123456789

${EMAIL_FIELD}          email
${PASSWORD_FIELD}       senha
${ENTRAR_BUTTON}        class=btn-primary
${LOGIN_BUTTON}         //a[.='Login']

*** Keywords ***
The user is in the "login"'s page
    Click Element   ${LOGIN_BUTTON}

The user inputs the email
    Input Text  ${EMAIL_FIELD}  ${EMAIL}

The user inputs the password
    Input Text  ${PASSWORD_FIELD}  ${PASSWORD}

The user inputs the wrong password
    ${random_pass}=     FakerLibrary.Password
    Input Text  ${PASSWORD_FIELD}  ${random_pass}

The user press the "Entrar" button
    Click Button    ${ENTRAR_BUTTON}
