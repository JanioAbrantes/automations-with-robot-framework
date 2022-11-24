*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary   locale=pt_BR

*** Variables ***
${EMAIL}                jeovanio@thebug.com
${PASSWORD}             123456789
${EMAIL_MESSAGE}        Email é um campo obrigatório
${PASS_MESSAGE}         Senha é um campo obrigatório

${EMAIL_FIELD}          email
${PASSWORD_FIELD}       senha
${ENTRAR_BUTTON}        class=btn-primary
${LOGIN_BUTTON}         //a[.='Login']
${ALERT}                class=alert

*** Keywords ***
The user is in the "login"'s page
    Click Element   ${LOGIN_BUTTON}

The user inputs the valid values
    Input Text  ${EMAIL_FIELD}     ${EMAIL}
    Input Text  ${PASSWORD_FIELD}  ${PASSWORD}

The user inputs the email with an invalid password
    ${random_pass}=     FakerLibrary.Password
    Input Text  ${EMAIL_FIELD}     ${EMAIL}
    Input Text  ${PASSWORD_FIELD}  ${random_pass}

The user press the "Entrar" button
    Click Button    ${ENTRAR_BUTTON}

The user should receive an alert message for each of the empty fields
    Wait Until Page Contains Element    ${ALERT}
    Page Should Contain Element         //div[.="${EMAIL_MESSAGE}"]
    Page Should Contain Element         //div[.="${PASS_MESSAGE}"]