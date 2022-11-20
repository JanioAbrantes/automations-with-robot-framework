*** Settings ***
Documentation   Testing some functionalitys of the new user page.

Resource        Resources/common_functionality_keywords.robot
Resource        Resources/new_user_page_keywords.robot

Test Setup      common_functionality_keywords.Open Window
Test Teardown   common_functionality_keywords.Close Window

*** Test Cases ***
Create new user
    [Documentation]    The user go to the "cadastro"'s page and create a new user successfully
    Given The user is in the "cadastro"'s page
    When The user inputs the valid values
    And The user press the "Cadastrar" button
    Then The "Usuário inserido com sucesso" message should be displayed

Create an already existing user
    [Documentation]    The user go to the "cadastro"'s page and try to create an already created user
    Given The user is in the "cadastro"'s page
    When The user inputs the valid values with an already used email
    And The user press the "Cadastrar" button
    Then The "Endereço de email já utilizado" message should be displayed

Create new user with all fields empty
    [Documentation]    The user go to the "cadastro"'s page and click the "Cadastrar" button with all the fields empty
    Given The user is in the "cadastro"'s page
    When The user press the "Cadastrar" button with all the fields empty
    Then The user should receive an alert message for each of the empty fields
