*** Settings ***
Library    SeleniumLibrary

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
Teste 1
    Go To    ${url}

*** Test Cases ***
Cenário 1: Executar um vídeo no Youtube
    Teste 1
    


