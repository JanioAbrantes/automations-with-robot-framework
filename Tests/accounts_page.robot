*** Settings ***
Documentation   Some functionalitys of the accounts page.

Resource        Resources/common_functionality_keywords.robot
Resource        Resources/accounts_page_keywords.robot

Test Setup      common_functionality_keywords.Open Window
Test Teardown   common_functionality_keywords.Close Window

*** Test Cases ***
The user go to the "addConta"'s page and create a new account
    # Probabilidade: Baixo
    # Risco: Baixo
    Given The user is loged in
    And The user is in the "addConta"'s page
    When The user input a new account name
    And The user clicks on the "Salvar" button
    Then The "Conta adicionada com sucesso!" message should be displayed

The user should not be able to delete an account with any transaction
    # Probabilidade: Medio
    # Risco: Alto
    Given The user is loged in
    And There's an account with a transaction
    And The user is in the "contas"'s page
    When The user click on the delete button of the "Conta com movimentacao" account
    Then The "Conta em uso na movimentações" message should be displayed
