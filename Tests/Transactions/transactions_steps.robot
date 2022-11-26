*** Settings ***
Documentation   The steps of the transactions_tests

Library         FakerLibrary   locale=pt_BR
Library         SeleniumLibrary

Resource        Resources/transactions_page.robot

*** Keywords ***
The already logged in user has an already created account
    Click Element                   ${CONTAS_BUTTON}
    Click Element                   ${LISTAR_OPTION}
    Page Should Contain Element     ${ACCOUNT_NAME}

The user is in the "movimentacao"'s page
    Click Element                   ${MOVIMENTACAO_BUTTON}

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
    Select From List By Label   ${CONTA_FIELD}   Conta para movimentacoes
    Click Button                ${SITUACAO_FIELD}