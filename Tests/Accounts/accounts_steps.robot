*** Settings ***
Documentation       The steps of the accounts_tests

Library             FakerLibrary   locale=pt_BR
Library             SeleniumLibrary

Resource            Resources/accounts_page.robot

*** Keywords ***
The already logged in user is in the "addConta"'s page
    Click Element   ${CONTAS_BUTTON}
    Click Element   ${ADICIONAR_OPTION}

The user is in the "contas"'s page
    Click Element   ${CONTAS_BUTTON}
    Click Element   ${LISTAR_OPTION}

The user input a new account name
    ${random_name}=     FakerLibrary.Name
    Input Text      ${NAME_FIELD}   ${random_name}

The already logged in user has an account with a transaction created
    Page Should Contain Element     ${CREATED_ACCOUNT}
