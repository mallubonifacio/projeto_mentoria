*** Settings ***
Documentation    cadastroAction é o arquivo onde armazenamos todas as ações das minhas keywords referentes ao acesso do App Registration

Resource    ../../resources/pages/cadastroPage.robot


*** Keywords ***

Dado que o usuário acesse o App Registration sem conta cadastrada
    App Access

Quando acessar a Home
    Home validation

Então deverá visualizar as opções New e Menu
    Validation Tools