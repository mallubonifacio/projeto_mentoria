*** Settings ***

Variables    ../components/CadastroComp.py
Resource    ../Commons.robot


*** Keywords ***
App Access  
    Check Element and Click    ${ACCESS_BTN_PICTURE_PERMISSION}
    Check Element and Click    ${ACCESS_BTN_MEDIA_PERMISSION}

Home validation
    Wait Until Element Is Visible    ${MENU_BUTTON}
    Wait Until Page Contains    Product Registration

Validation Tools
    Wait Until Element Is Visible    ${MENU_BUTTON}
    