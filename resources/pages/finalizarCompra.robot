*** Settings ***
Resource    ../main.robot

*** Variables ***
&{finalizar_Compra}
...    div_CheckOverview=//div[contains(text(),"Checkout: Overview")]
...    a_finish=//a[contains(text(),"FINISH")]


*** Keywords ***

Entao Finalizo Compra

    Wait Until Element Is Visible    ${finalizar_Compra.div_CheckOverview}

    Click Element    ${finalizar_Compra.a_finish}
