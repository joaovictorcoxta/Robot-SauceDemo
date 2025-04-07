*** Settings ***
Library    SeleniumLibrary

### Data ###

Resource    data/geral.robot
Resource    data/dados_registro.robot

### Shared ###

### Pages ###
Resource    pages/page_itens.robot
Resource    pages/login_page.robot
Resource    pages/carrinho_page.robot
Resource    pages/dadoscomprador_page.robot
Resource    pages/finalizarCompra.robot
