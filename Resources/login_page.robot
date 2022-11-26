*** Settings ***
Documentation           The Page object of the login function

*** Variables ***
${EMAIL}                jeovanio@thebug.com
${EMAIL_MESSAGE}        Email é um campo obrigatório
${PASSWORD}             123456789
${PASS_MESSAGE}         Senha é um campo obrigatório

${ALERT}                class=alert
${EMAIL_FIELD}          email
${LOGIN_BUTTON}         //a[.='Login']
${PASSWORD_FIELD}       senha