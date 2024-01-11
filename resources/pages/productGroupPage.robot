*** Settings ***

Variables    ../components/GroupComp.py
Variables    ../components/CadastroComp.py
Resource    ../Commons.robot

*** Variables ***
@{Grupos}    Alimentacao    Limpeza    Lazer    Higiene    Bebe

*** Keywords ***

Guide Add Product
    Check Element and Click    ${MENU_BUTTON}
    Check Element and Click    ${CREATE_GROUP_BTN}
    Check Element and Click    ${ADD_GROUP_BTN}

Create product group 1 
    Check Element and Input    ${NAME_GROUP_DESCRIPTION}    ${Grupos[0]}
    Check Element and Click    br.com.pztec.estoque:id/btn_salvar

Create product group 2
    Check Element and Click    ${ADD_GROUP_BTN}
    Check Element and Input    ${NAME_GROUP_DESCRIPTION}    ${Grupos[1]}
    Check Element and Click    br.com.pztec.estoque:id/btn_salvar

Create product group 3
    Check Element and Click    ${ADD_GROUP_BTN}
    Check Element and Input    ${NAME_GROUP_DESCRIPTION}    ${Grupos[2]}
    Check Element and Click    br.com.pztec.estoque:id/btn_salvar

Create product group 4
    Check Element and Click    ${ADD_GROUP_BTN}
    Check Element and Input    ${NAME_GROUP_DESCRIPTION}    ${Grupos[3]}
    Check Element and Click    br.com.pztec.estoque:id/btn_salvar

Create product group 5
    Check Element and Click    ${ADD_GROUP_BTN}
    Check Element and Input    ${NAME_GROUP_DESCRIPTION}    ${Grupos[4]}
    Check Element and Click    br.com.pztec.estoque:id/btn_salvar

Check Group creation
    Text Should Be Visible    Alimentacao
    Text Should Be Visible    Bebe
    Text Should Be Visible    Higiene
    Text Should Be Visible    Lazer
    Swipe    0    495    0    109
    Text Should Be Visible    Limpeza

