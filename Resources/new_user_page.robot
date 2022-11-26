*** Settings ***
Documentation           The Page object of the new_user function

*** Variables ***
${EMAIL}                jeovanio@thebug.com
${EMAIL_MESSAGE}        Email é um campo obrigatório
${NOME_MESSAGE}         Nome é um campo obrigatório
${PASSWORD}             123456789
${PASS_MESSAGE}         Senha é um campo obrigatório

${ALERT}                class=alert
${CADASTRAR_BUTTON}     class=btn-primary
${EMAIL_FIELD}          email
${NAME_FIELD}           nome
${NOVO_USUARIO_BUTTON}  //a[.='Novo usuário?']
${PASSWORD_FIELD}       senha