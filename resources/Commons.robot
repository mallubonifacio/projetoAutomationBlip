*** Settings ***
Documentation    Este arquivo será utilizado para registrar as keywords globais do projeto

Library    SeleniumLibrary
Library    OperatingSystem



*** Keywords ***

Open Site
    Open Browser    browser=chrome    url=http://demo.testfire.net/bank/transfer.jsp

Close Site
    Close Browser
    Capture Page Screenshot
    
Check Element and Click
    [Arguments]    ${Element}
    Wait Until Element Is Visible    ${Element}    30
    Click Element    ${Element}

Check Element and Input 
    [Arguments]    ${Element}    ${Text}
    Wait Until Element Is Visible    ${Element}    30
    Input Text    ${Element}    ${Text}

