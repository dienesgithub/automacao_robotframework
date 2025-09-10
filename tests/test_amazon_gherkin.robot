*** Settings ***
Documentation    Esta suite testa o site da amazom.com
Resource    ../resources/resources_amazon.robot
Test Setup    Abrir o navegador
Test Teardown    Fechar o navegador

*** Test Cases ***

Caso de Teste 01 - Acesso ao menu "Eletrônicos"
    [Documentation]    Este teste verifica o menu eletrônicos do site amazon.com.br
    ...                e visualiza a categoria  componentes de Informática
    [Tags]    menus
    Dado que estou na home page da Amazon.com.br
    Quando acessar o menu "Eletrônicos"
    Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    E o texto "Eletrônicos e Tecnologia" deve ser exibido na página

Caso de Teste 02 - Pesquisa de um produto
     [Documentation]    Este verifica a busca de um produto
     [Tags]    busca    busca_produto
     Dado que estou na home page da Amazon.com.br
     Quando pesquisar pelo produto "Xbox Series S"
     Então um produto da linha "Xbox Series S" deve ser exibo na página
