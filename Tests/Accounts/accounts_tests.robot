*** Settings ***
Documentation   Testing some functionalitys of the accounts page.

Resource        Resources/common_functionality_keywords.robot
Resource        accounts_steps.robot

Test Setup      Run Keywords     common_functionality_keywords.Open Window
...             AND     common_functionality_keywords.The user is loged in
Test Teardown   common_functionality_keywords.Close Window

*** Test Cases ***
Create new account
    [Documentation]    The user go to the "addConta"'s page and create a new account
    Given The already logged in user is in the "addConta"'s page
    When The user input a new account name
    And The user press the "Salvar" button
    Then The "Conta adicionada com sucesso!" message should be displayed

Delete an account with any transaction
    [Documentation]    The user should not be able to delete an account with any transaction
    Given The already logged in user has an account with a transaction created
    And The user is in the "contas"'s page
    When The user click on the delete button of the "Conta com movimentacao" account
    Then The "Conta em uso na movimentações" message should be displayed
