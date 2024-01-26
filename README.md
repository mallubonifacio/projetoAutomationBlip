## PROJETO AUTOMAÇÃO  -  BLIP

Este projeto visa realizar uma automação que valide os fluxos de login, transferencia de saldo, validação das transações mais recentes e 
armazenamento dos dados transacionais em um arquivo .json dentro do projeto, sendo esse sempre atualizado a medida que novas transações
vâo sendo realizadas.

## 👨‍💻 Tecnologias

Você vai precisar das seguintes ferramentas e tecnologias:

- [Python 3.12.1](https://www.python.org/downloads/)
- [Visual Studio](https://code.visualstudio.com/download)
- [SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary/?tab=readme-ov-file#installation)
- [FakerLibrary](https://pypi.org/project/robotframework-faker/)
- [Robot Framework](https://robotframework.org/)


## 💻 Ferramentas

- [Navegador Chrome](https://www.google.pt/intl/pt-BR/chrome/?_gl=1*1nk1508*_up*MQ..&gclid=CjwKCAiA5L2tBhBTEiwAdSxJXzbnJNXQ8WzpmhXqSl7ebGJCjJtYu2HAB710YoiWUugF6c1qi6ypyRoCOrAQAvD_BwE&gclsrc=aw.ds)
- [ChromeDriver - Compativel com a sua versão do Chrome](https://edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/120.0.6099.109/win64/chromedriver-win64.zip)

## 🔖 Configurações de ambiente

### No Linux ou Mac

Para este projeto será necessário incluir uma cópia do executável do chromedriver.exe dentro da pasta PATH do Python

No Mac ou Linux a mesma está disponível pelo caminho abaixo:

/usr/local/bin/python3.12

Basta colar o arquivo na pasta e tudo certo!

### No Windows

O mesmo processo será feito no windows seguindo o caminho abaixo:

- C:\Users\**SEU USUARIO LOCAL**\AppData\Local\Programs\Python\Python312\Scripts\

Basta colar o arquivo na pasta e tudo certo!


## 🤔 Para executar o projeto?

- Acesse a pasta do projeto;
- Instale o Robot e a SeleniumLibrary conforme descrito na [doc](https://robotframework.org/);
- Valide que o executavel do ChromeDriver.exe esteja dentro da pasta PATH do Python;
- No terminal valide que esta dentro da pasta correspondente ao projeto;
- Execute o seguinte comando no terminal: "robot -d logs  .\tests\bank_Transfer.robot";
- Enjoy =).


⌨️ com ❤️ por Maria Luiza Bonifacio 😊

---

