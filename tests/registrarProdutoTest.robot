Language: pt-Br
*** Settings ***
Documentation    Enquando usuário devo poder criar um produto e validar sua criação através da ferramenta Report.

Resource    ../resources/actions/productsActions.robot
Resource    ../resources/Commons.robot

Test Setup    Open App
Test Teardown    Close App

*** Test Cases ***

Registrar 1 produto, e validá-lo através do Report
    Dado que o usuário esteja ativo no App
    Quando acessar a Home
    Então deverá cadastrar 1 produto
    E valida-lo através do "Report"

Registrar 2 produtos, com product Group distintos, e validá-los através do Report
    Dado que o usuário esteja ativo no App
    Quando acessar a Home
    Então deverá cadastrar 2 produtos, em grupos distintos
    E valida-los através do "Report"