*** Settings ***
Documentation           The Page object of the login function

*** Variables ***
${EMAIL}                jeovanio@thebug.com
${PASSWORD}             123456789
${EMAIL_MESSAGE}        Email é um campo obrigatório
${PASS_MESSAGE}         Senha é um campo obrigatório

${EMAIL_FIELD}          email
${PASSWORD_FIELD}       senha
${LOGIN_BUTTON}         //a[.='Login']
${ALERT}                class=alert