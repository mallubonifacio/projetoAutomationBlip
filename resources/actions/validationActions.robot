*** Settings ***
Documentation    validationActions é o arquivo onde armazenamos todas as ações das minhas keywords referentes
...              aos cenários de teste para validação das transações realizadas na página "View Recent Transactions"

Resource    ../../resources/pages/validationPage.robot
Variables    ../../resources/components/ValidationComp.py


*** Keywords ***

Quando acessar a opção "View Recent Transactions"
    Recent Transactions Page Validation

Então deverá visualizar as 3 últimas transações realizadas
    Validate Last Transactions
    Capture Page Screenshot