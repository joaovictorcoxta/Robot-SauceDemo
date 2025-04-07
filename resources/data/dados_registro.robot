*** Settings ***
Resource    ../main.robot

*** Variables ***

&{dados_registro}
...    nome=joao
...    segundonome=costa
...    postalcode=35501250

&{users}
...    standard=standard_user
...    problem=problem_user
...    permormance=performance_glitch_user