*** Settings ***
Documentation    Este arquivo será utilizado para registrar as keywords referentes aos cenários relacionados
...              a validação da página onde encontramos os dados das últimas transações realizadas.

Variables    ../components/ValidationComp.py
Resource    ../Commons.robot
Library    Collections


*** Keywords ***

Recent Transactions Page Validation
    Check Element and Click   ${VIEW_TRANSACTIONS_BTN} 
    Wait Until Page Contains    Recent Transactions

Validate Last Transactions
    Click Link    View Recent Transactions
    ${transaction_ids}=    Get WebElements    xpath=/html[1]/body[1]/table[2]/tbody[1]/tr[1]/td[2]/div[1]/form[1]/table[2]/tbody[1]/tr[2]/td[1]
    ${last_3_ids}=    Get Slice From List    ${transaction_ids}    -3
    Set Test Variable    ${last_3_ids}
