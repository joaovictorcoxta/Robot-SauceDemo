*** Settings ***
Resource    ../main.robot

*** Variables ***

&{itens}
...    button_addtoCart=//button[contains(text(), 'ADD TO CART')]

*** Keywords ***

E adiciono ao Carrinho
    
    ${botoes}    Get WebElements    ${itens.button_addtoCart}
    
    FOR    ${botao}    IN    @{botoes}
        Click Element    ${botao}
    END