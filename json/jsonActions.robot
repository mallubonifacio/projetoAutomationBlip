*** Settings ***
Documentation    validationActions é o arquivo onde armazenamos todas as ações das minhas keywords referentes
...              aos cenários de teste para armazenamento dos dados transacionais em um arquivo .json

Resource    jsonPage.robot
Resource    ../resources/pages/transferPage.robot
Resource    ../resources/pages/validationPage.robot
Resource    ../resources/pages/loginPage.robot


*** Keywords ***

Dado que o usuário esteja logado e seja realizada uma nova transação
    Input login data
    Check Element and Click    ${LOGIN_BUTTON}
    Transfer option
    Efetuar Transferência
Quando os dados da transação estiverem visiveis na opção "View Recent Transactions"
    Recent Transactions Page Validation

Então deveremos armazenar 'Transaction ID', 'Transaction Time' e 'Amount' em um arquivo JSON
    Add Object Into Json File
E validar que o armazenamento ocorra para cada nova transação
    Transfer option
    Repeat Keyword    1    Efetuar Transferência
    Repeat Keyword    1    Recent Transactions Page Validation
    Repeat Keyword    1    Add Object Into Json File