*** Settings ***
Documentation           The Page object of the transactions function

*** Variables ***
${CONTAS_BUTTON}        class=dropdown-toggle
${LISTAR_OPTION}        //a[.='Listar']
${MOVIMENTACAO_BUTTON}  //a[.='Criar Movimentação']
${ACCOUNT_NAME}         //td[.='Conta para movimentacoes']

${TIPO_MOV_FIELD}       tipo
${DATA_MOV_FIELD}       data_transacao
${DATA_PG_FIELD}        data_pagamento
${DESCRICAO_FIELD}      descricao
${INTERESSADO_FIELD}    interessado
${VALOR_FIELD}          valor
${CONTA_FIELD}          conta
${SITUACAO_FIELD}       status_pago