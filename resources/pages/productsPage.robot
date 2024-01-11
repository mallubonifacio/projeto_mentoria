*** Settings ***

Variables    ../components/ProductComp.py
Variables    ../components/CadastroComp.py
Resource    ../pages/cadastroPage.robot
Resource    ../Commons.robot
Resource    productGroupPage.robot

*** Variables ***
&{PRODUCT1}    code=0001   description=Leite  packing=1L   amount=10    value=5.99    lot=0034
&{PRODUCT2}    code=0002   description=Fralda  packing=32un   amount=23    value=32.99    lot=00309
&{PRODUCT3}    code=0003   description=Detergente  packing=1un   amount=32    value=2.49    lot=0039

*** Keywords ***

Create a new product 1
    Check Element and Click    ${NEW_BUTTON}
    Check Element and Input    ${CODE_FIELD}    ${PRODUCT1.code}
    Check Element and Input    ${DESCRIPTION_FIELD}    ${PRODUCT1.description}
    Check Element and Input    ${PACKING_FIELD}    ${PRODUCT1.packing}
    Check Element and Input    ${AMOUNT_FIELD}    ${PRODUCT1.amount}
    Check Element and Input    ${UNIT_VALUE_FIELD}    ${PRODUCT1.value}
    Check Element and Input    ${LOT_FIELD}    ${PRODUCT1.lot}
    Check Element and Click    ${SAVE_BTN}


Create a new product 2 and group
    Check Element and Click    ${NEW_BUTTON}
    Check Element and Input    ${CODE_FIELD}    ${PRODUCT2.code}
    Check Element and Input    ${DESCRIPTION_FIELD}    ${PRODUCT2.description}
    Check Element and Input    ${PACKING_FIELD}    ${PRODUCT2.packing}
    Check Element and Input    ${AMOUNT_FIELD}    ${PRODUCT2.amount}
    Check Element and Input    ${UNIT_VALUE_FIELD}    ${PRODUCT2.value}
    Check Element and Input    ${LOT_FIELD}    ${PRODUCT2.lot}
    Check Element and Click    ${SAVE_BTN}
    Guide Add Product
    Create product group 5

Create a new product 3 and group
    Check Element and Click    ${NEW_BUTTON}
    Check Element and Input    ${CODE_FIELD}    ${PRODUCT3.code}
    Check Element and Input    ${DESCRIPTION_FIELD}    ${PRODUCT3.description}
    Check Element and Input    ${PACKING_FIELD}    ${PRODUCT3.packing}
    Check Element and Input    ${AMOUNT_FIELD}    ${PRODUCT3.amount}
    Check Element and Input    ${UNIT_VALUE_FIELD}    ${PRODUCT3.value}
    Check Element and Input    ${LOT_FIELD}    ${PRODUCT3.lot}
    Check Element and Click    ${SAVE_BTN}
    Guide Add Product
    Create product group 2

Group Alteration
    Home validation
    

Report Validation
    Check Element and Click    ${MENU_BUTTON}
    Check Element and Click    ${REPORT_BTN}
    Check Element and Click    ${INVENTORY_BTN}
    Check Element and Click    ${PDF_GENERATOR_BTN}
    Wait Until Element Is Visible    br.com.pztec.estoque:id/datafile
    Check Element and Click    ${PDF_VIEWER_BTN}
    


