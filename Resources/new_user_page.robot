*** Settings ***
Documentation           The Page object of the new_user function

*** Variables ***
${EMAIL}                jeovanio@thebug.com
${PASSWORD}             123456789
${NOME_MESSAGE}         Nome é um campo obrigatório
${EMAIL_MESSAGE}        Email é um campo obrigatório
${PASS_MESSAGE}         Senha é um campo obrigatório

${NOVO_USUARIO_BUTTON}  //a[.='Novo usuário?']
${CADASTRAR_BUTTON}     class=btn-primary
${NAME_FIELD}           nome
${EMAIL_FIELD}          email
${PASSWORD_FIELD}       senha
${ALERT}                class=alert