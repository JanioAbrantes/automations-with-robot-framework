*** Settings ***
Documentation   Some functionalitys of the home page.

Resource        Resources/common_functionality_keywords.robot
Resource        Resources/home_page_keywords.robot

Test Setup      common_functionality_keywords.Open Window
Test Teardown   common_functionality_keywords.Close Window

*** Test Cases ***
The user should be able to reset the account, and the account should be empty after reseted
    # Probabilidade: Medio
    # Risco: Baixo
    # This test will Fail
    Given The user is loged in
    And The user is in the "home"'s page
    When The user click on the "reset" link
    Then The "Dados resetados com sucesso!" message should be displayed
    And The "Conta" and "Saldo"'s field should be empty
