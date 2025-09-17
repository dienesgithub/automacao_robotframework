*** Settings ***
Library  OperatingSystem

*** Test Cases ***
Cenário 1: Teste de exemplo "Hello World"
    Log  Hello, Robot Framework!
    Should Be Equal  1  1