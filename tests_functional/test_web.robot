** Settings **
Library  SeleniumLibrary

** Variables **
${variavel_teste}   variavel
${outra_variavel}   outra

** Keywords **
Abrir Google
    Open Browser  https://www.google.com.br/  chrome

Abrir Globo
    Open Browser  https://www.globo.com/  chrome   

Fechar navegador
    Close Browser

** Test Cases **
Cenário 1: Acessando o Google.com.br
    Abrir Google
    Fechar navegador

Cenário 2: Acessando o Globo.com
    Abrir Globo
    Fechar navegador