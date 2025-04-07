*** Settings ***
Resource    ../main.robot

*** Variables ***
&{geral}
...    saucedemo=https://www.saucedemo.com/v1/index.html
...    BROWSER=chrome

*** Keywords ***

Quando Abro site da saucedemo
    Open Browser    ${geral.saucedemo}    ${geral.BROWSER}
    Maximize Browser Window

Fechar Navegador
    Close Browser
