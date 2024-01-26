Language: pt-Br
*** Settings ***
Documentation       
...    Sendo um usuário já cadastrado e com uma conta criada
...    Quero acessar o site do meu banco 
...    Para que eu possa fazer novas transferencias e gerenciar minhas movimentações 

Resource    ../resources/Commons.robot
Resource    ../resources/actions/loginActions.robot
Resource    ../resources/actions/transferActions.robot
Resource    ../resources/actions/validationActions.robot
Resource    ../json/jsonActions.robot

Test Setup        Open Site
Test Teardown     Close Site

*** Test Cases ***

Acessar o site do banco
    [Documentation]    Este teste valida o acesso com sucesso ao site do banco e visualização
    ...                da home de login
    [Tags]             login
    Dado que o usuário acesse o site do banco AltoroMutual
    Quando acessar a Home
    Então deverá visualizar os campos solicitando os dados de login

Login com sucesso
    [Documentation]    Este teste valida o login com sucesso ao site do banco e visualização
    ...                da home da conta do usuário
    [Tags]             login
    Dado que o usuário acesse o site do banco AltoroMutual
    Quando acessar a Home
    E visualizar os campos solicitando os dados de login
    E adicionar suas credenciais de Usuário e Senha
    Então deverá ser redirecionado para a home da conta
    
Realizar 3 transações aleatórias 
    [Documentation]    Este teste valida a realização de 3 transferencias com valores aleatórios com 
    ...                sucesso
    [Tags]             transferencia
    Dado que o usuário esteja logado
    Quando acessar a opção "Transfer Funds"
    E realizar 3 transferencias de valores aleatórios
    Então deverá ser exibida mensagem informando que a transferencia foi realizada com sucesso

Validar as transações recentes
    [Documentation]    Este teste valida que as ultimas transações realizadas foram relacionadas a
    ...                lista de "Transações recentes"
    [Tags]             validação
    Dado que o usuário esteja logado
    Quando acessar a opção "View Recent Transactions"
    Então deverá visualizar as 3 últimas transações realizadas

Armazenar os dados transacionais em um arquivo JSON
    [Documentation]    Este teste valida que a cada nova transação os dados 'Transaction ID', 'Transaction Time' e 'Amount'
    ...                serão incrementados a um arquivo JSON para controle de transações
    [Tags]             validação    arquivamento
    Dado que o usuário esteja logado e seja realizada uma nova transação
    Quando os dados da transação estiverem visiveis na opção "View Recent Transactions"
    Então deveremos armazenar 'Transaction ID', 'Transaction Time' e 'Amount' em um arquivo JSON
    E validar que o armazenamento ocorra para cada nova transação