*** Settings ***
Documentation   Some functionalitys of the login page.

Resource        Resources/common_functionality_keywords.robot
Resource        Resources/login_page_keywords.robot

Test Setup      common_functionality_keywords.Open Window
Test Teardown   common_functionality_keywords.Close Window

*** Test Cases ***
The user go to the "login"'s page and can login successfully with a valid email and password
    # Probabilidade: Baixo
    # Risco: Medio
    Given The user is in the "login"'s page
    When The user inputs the email
    And The user inputs the password
    And The user press the "Entrar" button
    Then The "Bem vindo, jeovanio!" message should be displayed

The user go to the "login"'s page and try to login with an valid email and invalid password
    # Probabilidade: Baixo
    # Risco: Alto
    Given The user is in the "login"'s page
    When The user inputs the email
    And The user inputs the wrong password
    And The user press the "Entrar" button
    Then The "Problemas com o login do usuário" message should be displayed

The user go to the "login"'s page and try to login, leaving the email and password fields empty
    # Probabilidade: Baixo
    # Risco: Baixo
    Given The user is in the "login"'s page
    When The user press the "Entrar" button
    Then The "Email é um campo obrigatório" message should be displayed
    And The "Senha é um campo obrigatório" message should be displayed
