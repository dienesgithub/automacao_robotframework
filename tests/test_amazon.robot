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
    Acessar a home page do site Amazon.com.br
    Entrar no menu "Eletrônicos"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a categoria "Computadores e Informática"

 Caso de Teste 02 - Pesquisa de um produto
     [Documentation]    Este verifica a busca de um produto
     [Tags]    busca    busca_produto
     Acessar a home page do site Amazon.com.br
     Digitar o nome do produto "Xbox Series S" no campo de pesquisa
     Clicar no botão de Pesquisa
     Verificar o resultado da pesquisa se está listando o produto "Xbox Series S"