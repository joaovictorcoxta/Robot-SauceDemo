*** Settings ***
Resource    ../main.robot

*** Variables ***
&{login}
...    input_name=id:user-name
...    input_password=id:password
...    input_buttonLogin=login-button


*** Keywords ***

E insiro login e senha
    [Arguments]    ${usuario}
    Input Text    ${login.input_name}    ${usuario}
    Input Text    ${login.input_password}    secret_sauce
    Click Element    ${login.input_buttonLogin}