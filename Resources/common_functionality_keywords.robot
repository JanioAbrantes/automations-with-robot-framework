*** Settings ***
Documentation           Some variables and keywords used by more than one test

*** Variables ***
${EMAIL}                jeovanio@thebug.com
${HOME}                 https://seubarriga.wcaquino.me/
${PASSWORD}             123456789

${ALERT}                class=alert
${BUTTON}               class=btn-primary
${EMAIL_FIELD}          email
${PASSWORD_FIELD}       senha

*** Keywords ***
Open Window
    Open Browser    ${HOME}             Chrome
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