*** Settings ***
Documentation    LoginAction é o arquivo onde armazenamos todas as ações das minhas keywords referentes ao Login

Resource    ../../resources/pages/cadastroPage.robot
Resource    ../../resources/pages/productsPage.robot

*** Variables ***

@{PRODUCTS}    Leite    Fraldas    Detergente


*** Keywords ***

Dado que o usuário esteja ativo no App
    App Access

Quando acessar a Home
    Home validation

Então deverá cadastrar 1 produto
    Create a new product 1

 E valida-lo através do "Report"
    Report Validation
    Wait Until Page Contains    ${PRODUCTS[0]}

Então deverá cadastrar 2 produtos, em grupos distintos
    Create a new product 2 and group
    Create a new product 3 and group

E valida-los através do "Report"
    Report Validation
    Wait Until Page Contains    ${PRODUCTS[1]}
    Wait Until Page Contains    ${PRODUCTS[2]}