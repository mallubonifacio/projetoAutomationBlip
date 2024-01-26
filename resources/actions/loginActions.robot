*** Settings ***
Documentation    loginAction é o arquivo onde armazenamos todas as ações das minhas keywords referentes
...              aos cenários de teste login do usuário

Resource    ../../resources/pages/loginPage.robot
Variables    ../../resources/components/LoginComp.py


*** Keywords ***

Dado que o usuário acesse o site do banco AltoroMutual
    Site Access
    
Quando acessar a Home
    Home validation

Então deverá visualizar os campos solicitando os dados de login
    Username and password validation
    
E visualizar os campos solicitando os dados de login
    Username and password validation

E adicionar suas credenciais de Usuário e Senha
    Input login data
    Check Element and Click    ${LOGIN_BUTTON}
Então deverá ser redirecionado para a home da conta
    Account Home validation

Login with success
    Home validation
    Username and password validation
    Input login data
    Check Element and Click    ${LOGIN_BUTTON}
    Account Home validation