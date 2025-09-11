*** Settings ***
Library    RequestsLibrary
Library    String
Library    Collections

*** Keywords ***
Criar um usuário novo
    ${PALAVRA_ALEATORIA}    Generate Random String    4    [LOWER]
    Log To Console    message=\n Meu e-mail aleatório é: ${PALAVRA_ALEATORIA}@testesapi.com.br
#   ${PALAVRA_ALEATORIA}    Convert To Lower Case    ${PALAVRA_ALEATORIA}
    Set Test Variable    ${EMAIL_GERADO}    ${PALAVRA_ALEATORIA}@testesapi.com.br
    Log    message=Meu e-mail aleatório é: ${EMAIL_GERADO}

Cadastrar o usuário criado
    [Arguments]    ${EMAIL}    ${STATUS_CODE}
    ${BODY}   Create Dictionary    
    ...    nome=Robot Framework Sicrano 
    ...    email=${EMAIL}
    ...    password=1234
    ...    administrador=true
    Log    message=JSON criado: ${BODY}
    Criar Sessão
    ${RESPONSE}    POST On Session    alias=ServeRest    url=/usuarios    json=${BODY}    expected_status=${STATUS_CODE}
    Log    message=${RESPONSE.json()}
    IF    ${RESPONSE.status_code} == 201
        Set Test Variable    ${ID}    ${RESPONSE.json()["_id"]}
    END
    Set Test Variable    ${RESPONSE}    ${RESPONSE.json()}   

Criar Sessão
    ${HEADERS}    Create Dictionary    
    ...    accept=application/json
    ...    Content-Type=application/json
    Create Session    alias=ServeRest    url=https://serverest.dev    headers=${HEADERS}

Conferir se o usuário foi cadastrado com sucesso
    Log    Response recuperado: ${RESPONSE}
    Dictionary Should Contain Item    ${RESPONSE}    message    Cadastro realizado com sucesso
    Dictionary Should Contain Key    ${RESPONSE}    _id
    
Repetir o cadastro de usuário
    Cadastrar o usuário criado    EMAIL=${EMAIL_GERADO}    STATUS_CODE=400

Verificar se não permitiu o cadastro repetido
    Dictionary Should Contain Item    ${RESPONSE}    message    Este email já está sendo usado

Consultar os dados do usuário cadastro
    ${RESPONSE}    GET On Session    alias=ServeRest    url=/usuarios/${ID}    expected_status=200
    Set Test Variable    ${RESPONSE}    ${RESPONSE.json()}

Conferir dados retornados do usuário
    Log    Dados retornados: ${RESPONSE}
    Dictionary Should Contain Item    ${RESPONSE}    nome    Robot Framework Sicrano
    Dictionary Should Contain Item    ${RESPONSE}    email    ${EMAIL_GERADO}
    Dictionary Should Contain Item    ${RESPONSE}    password    1234
    Dictionary Should Contain Item    ${RESPONSE}    administrador    true
    Dictionary Should Contain Item    ${RESPONSE}    _id    ${ID}
        