*** Settings ***
Documentation    Este arquivo será utilizado para registrar as keywords referentes aos cenários relacionados
...              as transferencias e transações dentro da área logada

Variables    ../components/TransferComp.py
Resource    ../Commons.robot
Resource    ../pages/validationPage.robot
Library     FakerLibrary



*** Keywords ***


Transfer option
    Check Element and Click    ${TRANFER_OPTION}
    Wait Until Page Contains    Transfer Funds

Select Account
    Check Element and Click    ${CHECKBOX_TO_ACCOUNT}
    Check Element and Click    ${OPTION_TO_ACCOUNT}

Transfer Money
    Check Element and Click    ${TRNSFER_MONEY_BTN}
    

Efetuar Transferência
    ${AMOUTFAKE}    FakerLibrary.Random Number
    Check Element and Click    ${CHECKBOX_TO_ACCOUNT}
    Check Element and Click    ${OPTION_TO_ACCOUNT}
    Input Text     ${IMPUT_AMOUNT}    ${AMOUTFAKE}
    Click Button   ${TRNSFER_MONEY_BTN}

Realizar Transações de Transferência
    Repeat Keyword    3    Efetuar Transferência