*** Settings ***
Documentation           The Page object of the accounts function

*** Variables ***
${CREATED_ACCOUNT}      //tr/td[.="Conta com movimentacao"]/../td[.="-1500.00"]
${NAME_FIELD}           nome

${ADICIONAR_OPTION}     //a[.='Adicionar']
${CONTAS_BUTTON}        class=dropdown-toggle
${LISTAR_OPTION}        //a[.='Listar']
${RESET_BUTTON}         //a[.='reset']

*** Keywords ***
The user click on the delete button of the "${account_name}" account
    Click Element       //td[.='${account_name}']/../td[2]/a[2]