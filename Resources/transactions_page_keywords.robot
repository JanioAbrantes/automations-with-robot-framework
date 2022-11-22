*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary   locale=pt_BR

*** Variables ***
${CONTAS_BUTTON}        class=dropdown-toggle
${LISTAR_OPTION}        //a[.='Listar']
${SALVAR_BUTTON}        class=btn-primary
${MOVIMENTACAO_BUTTON}  //a[.='Criar Movimentação']
${ACCOUNT_NAME}         //td[.='Conta para movimentação']

${TIPO_MOV_FIELD}       tipo
${DATA_MOV_FIELD}       data_transacao
${DATA_PG_FIELD}        data_pagamento
${DESCRICAO_FIELD}      descricao
${INTERESSADO_FIELD}    interessado
${VALOR_FIELD}          valor
${CONTA_FIELD}          conta
${SITUACAO_FIELD}       status_pago


*** Keywords ***
The already logged in user has an already created account
    Click Element                   ${CONTAS_BUTTON}
    Click Element                   ${LISTAR_OPTION}
    Page Should Contain Element     ${ACCOUNT_NAME}

The user is in the "movimentacao"'s page
    Click Element   ${MOVIMENTACAO_BUTTON}

The user populates all the fields with valid values
    ${random_sentences}=        FakerLibrary.Sentences
    ${random_name}=             FakerLibrary.Name
    ${random_number}=           FakerLibrary.Random Number    digits=3

    Select From List By Value   ${TIPO_MOV_FIELD}   REC
    Input Text                  ${DATA_MOV_FIELD}   10/10/2022
    Input Text                  ${DATA_PG_FIELD}   15/10/2022
    Input Text                  ${DESCRICAO_FIELD}  ${random_sentences}
    Input Text                  ${INTERESSADO_FIELD}  ${random_name}
    Input Text                  ${VALOR_FIELD}  ${random_number}
    Select From List By Label   ${CONTA_FIELD}   Conta para movimentação
    Click Button                ${SITUACAO_FIELD}

The user press the "Salvar" button
    Click Button    ${SALVAR_BUTTON}
