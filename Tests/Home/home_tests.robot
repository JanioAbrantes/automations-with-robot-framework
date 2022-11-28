*** Settings ***
Documentation   Testing some functionalitys of the home page.

Resource        home_steps.robot
Resource        ../Resources/common_functionality_keywords.robot

Test Setup      Run Keywords     common_functionality_keywords.Open Window
...             AND     common_functionality_keywords.The user is loged in
Test Teardown   common_functionality_keywords.Close Window

*** Test Cases ***
Full Account Reset
    [Documentation]    The reset link should not appear to the user. (This test will Fail)
    Given The already logged in user is in the "home"'s page
    When The user hover the mouse after the second dot of the message "Seu Barriga. Nunca mais esqueça de pagar o aluguel."
    Then No link should be there