*** Settings ***
Resource    ../resources/api_usuarios.resource

*** Variables ***

*** Test Cases ***
Cenário 01: Cadastrar um novo usuário com sucesso
    Criar um usuário novo
    Cadastrar o usuário criado    EMAIL=${EMAIL_GERADO}    STATUS_CODE=201
    Conferir se o usuário foi cadastrado com sucesso

Cenário 02: Cadastrar um usuário já existente
    Criar um usuário novo
    Cadastrar o usuário criado    EMAIL=${EMAIL_GERADO}    STATUS_CODE=201
    Repetir o cadastro de usuário
    Verificar se não permitiu o cadastro repetido

Cenário 03: Consulta usuário cadastrado
    Criar um usuário novo
    Cadastrar o usuário criado    EMAIL=${EMAIL_GERADO}    STATUS_CODE=201
    Consultar os dados do usuário cadastro
    Conferir dados retornados do usuário
