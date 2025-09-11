*** Settings ***
Library    SeleniumLibrary
Test Setup    Abrir o navegador
Test Teardown    Fechar o navegador

*** Variables ***
# Dados do teste
${nomeMusica}    DINO - Primeiros Erros | DVD Barzim de Rock

# Variáveis configuração
${url}        https://www.youtube.com/
${browser}    chrome

# Elementos
${campoPesquisa}    //input[@name="search_query"] 
${botaoPesquisa}    //button[class="ytSearchboxComponentSearchButton ytSearchboxComponentSearchButtonDark"]
${videoDesejado}    //input[title=${nomeMusica}]

*** Keywords ***

Abrir o navegador
    Open Browser   browser=chrome
#   Maximize Browser Window
    Sleep    3s

Fechar o navegador
    Close Browser
Teste 1
    Go To    ${url}

*** Test Cases ***
Cenário 1: Executar um vídeo no Youtube
    Teste 1
    


