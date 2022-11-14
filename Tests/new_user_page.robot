*** Settings ***
Documentation   Some functionalitys of the new user page.

Resource        Resources/common_functionality_keywords.robot
Resource        Resources/new_user_page_keywords.robot

Test Setup      common_functionality_keywords.Open Window
Test Teardown   common_functionality_keywords.Close Window

*** Test Cases ***
The user go to the "cadastro"'s page and create a new user successfully
    # Probabilidade: Baixo
    # Risco: Medio
    Given The user is in the "cadastro"'s page
    When The user inputs the username
    And The user inputs the email
    And The user inputs the password
    And The user press the "Cadastrar" button
    Then The "Usuário inserido com sucesso" message should be displayed

The user go to the "cadastro"'s page and try to create an already created user
    # Probabilidade: Medio
    # Risco: Alto
    Given The user is in the "cadastro"'s page
    When The user inputs the username
    And The user inputs an already used email
    And The user inputs the password
    And The user press the "Cadastrar" button
    Then The "Endereço de email já utilizado" message should be displayed
