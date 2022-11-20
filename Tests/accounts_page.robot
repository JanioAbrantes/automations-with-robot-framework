*** Settings ***
Documentation   Testing some functionalitys of the accounts page.

Resource        Resources/common_functionality_keywords.robot
Resource        Resources/accounts_page_keywords.robot

Test Setup      common_functionality_keywords.Open Window
Test Teardown   common_functionality_keywords.Close Window

*** Test Cases ***
Create new account
    [Documentation]    The user go to the "addConta"'s page and create a new account
    Given The already logged in user is in the "addConta"'s page
    When The user input a new account name
    And The user clicks on the "Salvar" button
    Then The "Conta adicionada com sucesso!" message should be displayed

Delete an account with any transaction
    [Documentation]    The user should not be able to delete an account with any transaction
    Given The already logged in user is in the "contas"'s page
    And There's an account with a transaction created
    When The user click on the delete button of the "Conta com movimentacao" account
    Then The "Conta em uso na movimentações" message should be displayed