Language: pt-Br
*** Settings ***
Documentation    Criar Product Group   
...    Sendo um usuário ativo no App
...    Quero criar 5 product groups
...    Para que eu possa gerenciar meus produtos 

Resource    ../resources/actions/productGroupActions.robot

Test Setup    Open App
Test Teardown    Close App
Library    XML

*** Test Cases ***

Criar 5 Product Groups
    Dado que o usuário esteja ativo no App
    Quando acessar a Home
    Então deverá cadastrar 5 novos Product Groups
    E validar se todos foram criados corretamente
