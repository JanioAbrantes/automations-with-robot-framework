*** Settings ***
Documentation       The steps of the login_tests

Library             FakerLibrary   locale=pt_BR
Library             SeleniumLibrary

Resource            ../Resources/login_page.robot

*** Keywords ***
The user is in the "login"'s page
    Click Element   ${LOGIN_BUTTON}

The user inputs the valid values
    Input Text      ${EMAIL_FIELD}     ${EMAIL}
    Input Text      ${PASSWORD_FIELD}  ${PASSWORD}

The user inputs the email with an invalid password
    ${random_pass}=     FakerLibrary.Password
    Input Text      ${EMAIL_FIELD}     ${EMAIL}
    Input Text      ${PASSWORD_FIELD}  ${random_pass}

The user should receive an alert message for each of the empty fields
    Wait Until Page Contains Element    ${ALERT}
    Page Should Contain Element         //div[.="${EMAIL_MESSAGE}"]
    Page Should Contain Element         //div[.="${PASS_MESSAGE}"]