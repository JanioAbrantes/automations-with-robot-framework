*** Settings ***
Documentation   The steps of the new_user_tests

Library         FakerLibrary   locale=pt_BR
Library         SeleniumLibrary

Resource        Resources/new_user_page.robot

*** Keywords ***
The user is in the "cadastro"'s page
    Click Element            ${NOVO_USUARIO_BUTTON}

The user inputs the valid values
    ${random_email}=         FakerLibrary.Email
    ${random_name}=          FakerLibrary.Name
    ${random_pass}=          FakerLibrary.Password
    Input Text               ${NAME_FIELD}      ${random_name}
    Input Text               ${EMAIL_FIELD}     ${random_email}
    Input Text               ${PASSWORD_FIELD}  ${random_pass}

The user inputs the valid values with an already used email
    ${random_name}=          FakerLibrary.Name
    ${random_pass}=          FakerLibrary.Password
    Input Text               ${NAME_FIELD}      ${random_name}
    Input Text               ${EMAIL_FIELD}     ${EMAIL}
    Input Text               ${PASSWORD_FIELD}  ${random_pass}

The user press the "Cadastrar" button with all the fields empty
    Click Button             ${CADASTRAR_BUTTON}

The user should receive an alert message for each of the empty fields
    Wait Until Page Contains Element    ${ALERT}
    Page Should Contain Element         //div[.="${NOME_MESSAGE}"]
    Page Should Contain Element         //div[.="${EMAIL_MESSAGE}"]
    Page Should Contain Element         //div[.="${PASS_MESSAGE}"]