*** Settings ***
Documentation           The Page object of the accounts function

*** Variables ***
${NAME_FIELD}           nome
${CREATED_ACCOUNT}      //tr/td[.="Conta com movimentacao"]/../td[.="-1500.00"]

${CONTAS_BUTTON}        class=dropdown-toggle
${ADICIONAR_OPTION}     //a[.='Adicionar']
${LISTAR_OPTION}        //a[.='Listar']
${RESET_BUTTON}         //a[.='reset']


*** Keywords ***
The user click on the delete button of the "${account_name}" account
    Click Element   //td[.='${account_name}']/../td[2]/a[2]