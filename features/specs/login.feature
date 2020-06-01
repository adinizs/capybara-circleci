#language: pt
   
   Funcionalidade: Login
   
    @senha_invalida
    Esquema do Cenário: Login com senha inválida

    Dado que eu acesse a página de login
    Quando eu informar o username "<user>" e a senha "<senha>"
    Então verifico a mensagem "<msg>" de senha inválida

    Exemplos:
    |user        |senha    |msg                              |
    |37474584832 |123456   |Senha incorreta. Tente novamente.|



    @login
    Esquema do Cenário: Login com sucesso

    Dado que eu acesse a página de login
    Quando eu informar o username "<user>" e a senha "<senha>"
    Então verifico a mensagem "<msg>" de sucesso


    Exemplos:
    |user        |senha          |msg  |
    |diniz       |9kxy5XmNy@uzrJP|diniz|
