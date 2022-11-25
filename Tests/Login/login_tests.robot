*** Settings ***
Documentation   Testing some functionalitys of the login page.

Resource        Resources/common_functionality_keywords.robot
Resource        login_steps.robot

Test Setup      common_functionality_keywords.Open Window
Test Teardown   common_functionality_keywords.Close Window

*** Test Cases ***
Log-in successfully
    [Documentation]  The user go to the "login"'s page and can log-in successfully with a valid email and password
    Given The user is in the "login"'s page
    When The user inputs the valid values
    And The user press the "Entrar" button
    Then The "Bem vindo, jeovanio!" message should be displayed

Log-in with invalid password
    [Documentation]  The user go to the "login"'s page and try to log-in with an valid email and invalid password
    Given The user is in the "login"'s page
    When The user inputs the email with an invalid password
    And The user press the "Entrar" button
    Then The "Problemas com o login do usuário" message should be displayed

Log-in with all fields empty
    [Documentation]  The user go to the "login"'s page and try to log-in, leaving the email and password fields empty
    Given The user is in the "login"'s page
    When The user press the "Entrar" button
    Then The user should receive an alert message for each of the empty fields