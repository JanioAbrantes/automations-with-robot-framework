*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${RESET_BUTTON}     //a[.='reset']
${HOME_BUTTON}      //a[.='Home']
${TABLE_ELEMENT}    //tr[2]


*** Keywords ***
The user is in the "home"'s page
    Click Element   ${HOME_BUTTON}
The user click on the "reset" link
    Click Element   ${RESET_BUTTON}
The "Conta" and "Saldo"'s field should be empty
    Element Text Should Be   ${TABLE_ELEMENT}    None
