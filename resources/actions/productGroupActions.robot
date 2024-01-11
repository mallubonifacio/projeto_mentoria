*** Settings ***
Documentation    LoginAction é o arquivo onde armazenamos todas as ações das minhas keywords referentes ao Login

Resource    ../../resources/pages/cadastroPage.robot
Resource    ../../resources/pages/productGroupPage.robot


*** Keywords ***

Dado que o usuário esteja ativo no App
    App Access

Quando acessar a Home
    Home validation

 Então deverá cadastrar 5 novos Product Groups
    Guide Add Product   
    Create product group 1
    Create product group 2
    Create product group 3
    Create product group 4
    Create product group 5

E validar se todos foram criados corretamente
    Check Group creation