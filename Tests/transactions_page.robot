*** Settings ***
Documentation   Testing some functionalitys of the transactions page.

Resource        Resources/common_functionality_keywords.robot
Resource        Resources/transactions_page_keywords.robot

Test Setup      Run Keywords     common_functionality_keywords.Open Window
...             AND     common_functionality_keywords.The user is loged in
Test Teardown   common_functionality_keywords.Close Window

*** Test Cases ***
Create new transaction
    [Documentation]    The user go to the "movimentacao"'s page and create a new transaction
    Given The already logged in user is in the "movimentacao"'s page
    And There is an already created account
    When The user populates all the fields with valid values
    And The user press the "Salvar" button
    Then The "Movimentação adicionada com sucesso!" message should be displayed
