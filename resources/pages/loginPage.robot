*** Settings ***
Documentation    Este arquivo será utilizado para registrar as keywords referentes aos cenários relacionados
...              ao acesso e login da página correspondente ao banco

Variables    ../components/LoginComp.py
Resource    ../Commons.robot

*** Variables ***
&{MASS}    username=jsmith    password=Demo1234

*** Keywords ***
Site Access  
    Wait Until Element Is Visible    ${BANK_LOGO}

Home validation
    Wait Until Page Contains    Online Banking Login

Username and password validation
    Check Element and Click    ${USERNAME_SPACE}
    Check Element and Click    ${PASSWORD_SPACE}   

Input login data
    Check Element and Input    ${USERNAME_SPACE}    ${MASS.username}
    Check Element and Input    ${PASSWORD_SPACE}    ${MASS.password}

Account Home validation
    Wait Until Page Contains    Hello John Smith
    Wait Until Page Contains    Welcome to Altoro Mutual Online