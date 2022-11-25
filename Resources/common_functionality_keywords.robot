*** Settings ***
Documentation           Some variables and keywords used by more than one test

*** Variables ***
${HOME}                 https://seubarriga.wcaquino.me/
${EMAIL}                jeovanio@thebug.com
${PASSWORD}             123456789

${EMAIL_FIELD}          email
${PASSWORD_FIELD}       senha
${BUTTON}               class=btn-primary
${ALERT}                class=alert

*** Keywords ***
Open Window
    Open Browser    ${HOME}    Chrome
    Wait Until Page Contains Element    class=navbar-brand

Close Window
    Close Browser

The user is loged in
    Input Text      ${EMAIL_FIELD}  ${EMAIL}
    Input Text      ${PASSWORD_FIELD}  ${PASSWORD}
    Click Button    ${BUTTON}

The "${message}" message should be displayed
    Wait Until Page Contains Element    ${ALERT}
    ${displayed_message}=   Get Text    ${ALERT}
    Should Be Equal                     ${message}  ${displayed_message}

The user press the "${button_name}" button
    Click Button    ${BUTTON}