** Settings **
Library  SeleniumLibrary

** Variables **
${user}         Admin
${password}     admin123

${inputUser}        name=username
${inputPassword}    name=password
${buttonLogin}      xpath=//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button

** Keywords **
Abrir navegador e acessar o site
    Open Browser   https://opensource-demo.orangehrmlive.com/web/index.php/auth/login  chrome

Realizar login com usuário e senha
    
    Input Text                      ${inputUser}        ${user}
    Input Text                      ${inputPassword}    ${password}
    Click Element                   ${buttonLogin}

Fechar navegador
    Sleep   5s
    Close Browser

** Test Cases **
Cenário 1: Preencher formulário
    Abrir navegador e acessar o site
    Realizar login com usuário e senha
    Fechar navegador