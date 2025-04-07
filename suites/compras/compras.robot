*** Settings ***
Resource    ../../resources/main.robot

*** Test Cases ***

*** Test Cases ***
TC01: Testar Vários Usuários
    FOR    ${tipo}    ${usuario}    IN    &{users}
        Log    Testando user tipo: ${tipo} com login: ${usuario}
        Quando Abro site da saucedemo
        E insiro login e senha    ${usuario}
        E adiciono ao Carrinho
        E Verifico Carrinho e realizo Checkout
        E insiro dados do comprador    
        Entao Finalizo Compra
        Fechar Navegador
    END


