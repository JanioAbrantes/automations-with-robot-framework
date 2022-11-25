*** Settings ***
Documentation       The steps of the home_tests

Library             SeleniumLibrary
Library             FakerLibrary   locale=pt_BR

Resource            Resources/home_page.robot

*** Keywords ***
The already logged in user is in the "home"'s page
    Click Element   ${HOME_BUTTON}
The user hover the mouse after the second dot of the message "Seu Barriga. Nunca mais esqueça de pagar o aluguel."
    Mouse Over      ${RESET_BUTTON}
No link should be there
    Page Should Not Contain Element     ${RESET_BUTTON}