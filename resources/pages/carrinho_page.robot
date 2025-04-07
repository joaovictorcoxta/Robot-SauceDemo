*** Settings ***
Resource    ../main.robot

*** Variables ***
&{carrinho}
...    div_cart=//a[@href='./cart.html']

...    a_Checkout=//a[@class='btn_action checkout_button']


*** Keywords ***

E Verifico Carrinho e realizo Checkout
    Click Element    ${carrinho.div_cart}
    Wait Until Element Is Visible    ${carrinho.a_Checkout}
    Click Element    ${carrinho.a_Checkout}
