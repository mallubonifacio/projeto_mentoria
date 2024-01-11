Language: pt-Br
*** Settings ***
Documentation    Login   
...    Sendo um usuário sem cadastro no Registration
...    Quero acessar o app
...    Para que eu possa gerenciar meus produtos 

Resource    ../resources/actions/cadastroActions.robot

Test Setup    Open App
Test Teardown    Close App

*** Test Cases ***

Acessar a conta sem cadastro
    Dado que o usuário acesse o App Registration sem conta cadastrada
    Quando acessar a Home
    Então Então deverá visualizar as opções New e Menu
