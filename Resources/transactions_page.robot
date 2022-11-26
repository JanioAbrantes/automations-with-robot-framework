*** Settings ***
Documentation           The Page object of the transactions function

*** Variables ***
${ACCOUNT_NAME}         //td[.='Conta para movimentacoes']
${CONTAS_BUTTON}        class=dropdown-toggle
${LISTAR_OPTION}        //a[.='Listar']
${MOVIMENTACAO_BUTTON}  //a[.='Criar Movimentação']

${CONTA_FIELD}          conta
${DATA_MOV_FIELD}       data_transacao
${DATA_PG_FIELD}        data_pagamento
${DESCRICAO_FIELD}      descricao
${INTERESSADO_FIELD}    interessado
${SITUACAO_FIELD}       status_pago
${TIPO_MOV_FIELD}       tipo
${VALOR_FIELD}          valor