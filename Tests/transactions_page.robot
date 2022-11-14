*** Settings ***
Documentation   Some functionalitys of the transactions page.

Resource        Resources/common_functionality_keywords.robot
Resource        Resources/transactions_page_keywords.robot

Test Setup      common_functionality_keywords.Open Window
Test Teardown   common_functionality_keywords.Close Window

*** Test Cases ***
The user go to the "movimentacao"'s page and create a new transaction
    # Probabilidade: Alto
    # Risco: Alto
    Given The user is loged in
    And There is an already created account
    And The user is in the "movimentacao"'s page
    When The user choose "Receita" in the "Tipo da Movimentação"'s field
    And The user inputs a valid date in the "Data da Movimentação"'s field
    And The user inputs a valid date in the "Data do Pagamento"'s field
    And The user inputs a transaction description in the "Descrição"'s field
    And The user inputs a name in the "Interessado"'s field
    And The user inputs the ammount of the payment in the "Valor"'s field
    And The user select the account name in the "Conta"'s field
    And The user choose the "Pago" option in the "Situação"'s field
    And The user press the "Salvar" button
    Then The "Movimentação adicionada com sucesso!" message should be displayed
