*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary   locale=pt_BR

*** Variables ***
${CONTAS_BUTTON}        class=dropdown-toggle
${ADICIONAR_OPTION}     //a[.='Adicionar']
${SALVAR_BUTTON}        class=btn-primary
${MOVIMENTACAO_BUTTON}  //a[.='Criar Movimentação']

${NAME_FIELD}           nome
${TIPO_MOV_FIELD}       tipo
${DATA_MOV_FIELD}       data_transacao
${DATA_PG_FIELD}        data_pagamento
${DESCRICAO_FIELD}      descricao
${INTERESSADO_FIELD}    interessado
${VALOR_FIELD}          valor
${CONTA_FIELD}          conta
${SITUACAO_FIELD}       status_pago


*** Keywords ***
There is an already created account
    Click Element   ${CONTAS_BUTTON}
    Click Element   ${ADICIONAR_OPTION}
    Input Text      ${NAME_FIELD}   account
    Click Button    ${SALVAR_BUTTON}

The user is in the "movimentacao"'s page
    Click Element   ${MOVIMENTACAO_BUTTON}

The user choose "Receita" in the "Tipo da Movimentação"'s field
    Select From List By Value   ${TIPO_MOV_FIELD}   REC

The user inputs a valid date in the "Data da Movimentação"'s field
    Input Text  ${DATA_MOV_FIELD}   10/10/2022

The user inputs a valid date in the "Data do Pagamento"'s field
    Input Text  ${DATA_PG_FIELD}   15/10/2022

The user inputs a transaction description in the "Descrição"'s field
    ${random_sentences}=    FakerLibrary.Sentences
    Input Text  ${DESCRICAO_FIELD}  ${random_sentences}

The user inputs a name in the "Interessado"'s field
    ${random_name}=    FakerLibrary.Name
    Input Text  ${INTERESSADO_FIELD}  ${random_name}

The user inputs the ammount of the payment in the "Valor"'s field
    ${random_number}=    FakerLibrary.Random Number    digits=3
    Input Text  ${VALOR_FIELD}  ${random_number}

The user select the account name in the "Conta"'s field
    Select From List By Label   ${CONTA_FIELD}   account

The user choose the "Pago" option in the "Situação"'s field
    Click Button    ${SITUACAO_FIELD}

The user press the "Salvar" button
    Click Button    ${SALVAR_BUTTON}
