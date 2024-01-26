*** Settings ***
Documentation    loginAction é o arquivo onde armazenamos todas as ações das minhas keywords referentes
...              aos cenários de teste de transaferencias de valores dentro da área logada do usuário

Resource    ../../resources/pages/transferPage.robot
Resource    loginActions.robot
Variables    ../../resources/components/TransferComp.py


*** Keywords ***

Dado que o usuário esteja logado
    Login with success

Quando acessar a opção "Transfer Funds"
    Transfer option
E realizar 3 transferencias de valores aleatórios 
    Efetuar Transferência
    Realizar Transações de Transferência
Então deverá ser exibida mensagem informando que a transferencia foi realizada com sucesso
    Wait Until Page Contains    successfully transferred

# E realizar uma transferencia no valor de $1,00 
#     Select Account
#     Check Element and Input    ${IMPUT_AMOUNT}    1
#     Transfer Money

# E realizar uma transferencia no valor de $10.000,00 
#     Select Account
#     Check Element and Input    ${IMPUT_AMOUNT}    10000
#     Transfer Money