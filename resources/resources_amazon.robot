*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.amazon.com.br
${MENU_TODOS}    //*[@id="nav-hamburger-menu"]/span
${CONNTINUAR_COMPRANDO}    xpath=//button[normalize-space(text())='Continuar comprando']
${MENU_ELETRONICOS}    //*[@data-csa-c-content-id="nav_cs_electronics"]
${CATEGORIA_COMPUTADOR_INFORMATICA}    //*[@id="anonCarousel2"]/ol/li[1]/div/a/div[2]/span/span
${CAMPO_PESQUISA}    //*[@id="twotabsearchtextbox"]

*** Keywords ***
Abrir o navegador
    Open Browser   browser=chrome
    Maximize Browser Window
    Sleep    3s

Fechar o navegador
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    ${ELEMENTO_VISIVEL}=    Run Keyword And Return Status    Element Should Be Visible    ${CONNTINUAR_COMPRANDO}    timeout=10s
        IF    '${ELEMENTO_VISIVEL}' == 'True'
            Click Button    ${CONNTINUAR_COMPRANDO}
        ELSE
            Log    Elemento CONTINUAR_COMPRANDO não está visível.
        END
    Wait Until Element Is Visible    locator=${MENU_TODOS}

 Entrar no menu "Eletrônicos"
     Click Element    locator=${MENU_ELETRONICOS}

Verificar se aparece a frase "${TEXTO_ELETRONICOS}"
    Wait Until Page Contains    text=${TEXTO_ELETRONICOS}

Verificar se o título da página fica "${TITULO}"
    Title Should Be    title=${TITULO}

Verificar se aparece a categoria "Computadores e Informática"
#   Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Element Should Be Visible    locator=${CATEGORIA_COMPUTADOR_INFORMATICA}

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text    locator=${CAMPO_PESQUISA}    text=${PRODUTO}
    
Clicar no botão de Pesquisa
#   Quando possuir ID podemos colocar somente ele no locator
    Click Element    locator=nav-search-submit-button    

Verificar o resultado da pesquisa se está listando o produto "${PRODUTO}"
    Wait Until Element Is Visible    locator=xpath=//h2//span[contains(text(),'${PRODUTO}')]

#GHERKIN

Dado que estou na home page da Amazon.com.br
    Acessar a home page do site Amazon.com.br

Quando acessar o menu "${TEXTO_ELETRONICOS}"
    Entrar no menu "Eletrônicos"
    Verificar se aparece a frase "${TEXTO_ELETRONICOS}"
    
Então o título da página deve ficar "${TITULO}"
    Verificar se o título da página fica "${TITULO}"
        
E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    Verificar se aparece a categoria "Computadores e Informática"
    
Quando pesquisar pelo produto "${PRODUTO}"
    Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Clicar no botão de Pesquisa
  
Então um produto da linha "${PRODUTO}" deve ser exibo na página
    Verificar o resultado da pesquisa se está listando o produto "${PRODUTO}"