
*** Settings ***
Documentation    Este arquivo será utilizado para registrar as keywords referentes aos cenários relacionados
...              aos cenários de armazenamento de dados transacionais em um arquivo .json

Library    SeleniumLibrary
Library    JSONLibrary
Library    FakerLibrary
Resource    ../resources/pages/validationPage.robot
Resource    ../resources/pages/loginPage.robot
Variables    JsonComp.py


*** Keywords ***


Add Object Into Json File
    ${DICTID}    FakerLibrary.Random Number    digits=1
    ${transactionId}     Get Text     xpath://table[@id = '_ctl0__ctl0_Content_Main_MyTransactions']/tbody/tr[2]/td[1]
    ${transactionTime}     Get Text     xpath://table[@id = '_ctl0__ctl0_Content_Main_MyTransactions']/tbody/tr[2]/td[2]
    ${amount}     Get Text     xpath://table[@id = '_ctl0__ctl0_Content_Main_MyTransactions']/tbody/tr[2]/td[5]
    ${File}     Load Json From File      ${CURDIR}${/}newtransactiondata.Json
    ${dict}     Create Dictionary       transactionID=${transactionId}    transaction_time=${transactionTime}   amount=${amount} 
    ${json}    Add Object To Json       ${File}    $.Transaction${DICTID}    ${dict}
    Dump Json To File    ${CURDIR}${/}newtransactiondata.Json    ${json}


