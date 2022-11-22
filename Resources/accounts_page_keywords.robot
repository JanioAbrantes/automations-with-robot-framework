*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary   locale=pt_BR

*** Variables ***
${NAME_FIELD}           nome
${CREATED_ACCOUNT}      //tr/td[.="Conta com movimentação"]/../td[.="875.25"]


${SALVAR_BUTTON}        class=btn-primary
${CONTAS_BUTTON}        class=dropdown-toggle
${ADICIONAR_OPTION}     //a[.='Adicionar']
${LISTAR_OPTION}        //a[.='Listar']
${RESET_BUTTON}         //a[.='reset']


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

The user clicks on the "Salvar" button
    CLick Button    ${SALVAR_BUTTON}

The already logged in user has an account with a transaction created
    Page Should Contain Element     ${CREATED_ACCOUNT}

The user click on the delete button of the "${account_name}" account
    Click Element   //td[.='${account_name}']/../td[2]/a[2]
