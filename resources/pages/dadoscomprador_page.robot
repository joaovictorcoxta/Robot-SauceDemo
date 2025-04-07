*** Settings ***
Resource    ../main.robot


*** Variables ***
&{dados_comprador}
...    div_checkout=//div[contains(text(),"Checkout: Your Information")]
...    input_firstname=//input[@id="first-name"]
...    input_lastname=//input[@id="last-name"]
...    input_postalcode=//input[@id="postal-code"]
...    input_btnContinue=//input[@value="CONTINUE"]

*** Keywords ***

E insiro dados do comprador    
    Wait Until Element Is Visible    ${dados_comprador.div_checkout}
    Input Text    ${dados_comprador.input_firstname}    ${dados_registro.nome}
    Input Text    ${dados_comprador.input_lastname}    ${dados_registro.segundonome}
    Input Text    ${dados_comprador.input_postalcode}    ${dados_registro.postalcode}

    Click Element    ${dados_comprador.input_btnContinue}