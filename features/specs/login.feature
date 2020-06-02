#language: pt
   
   Funcionalidade: Login

    @login
    Esquema do Cenário: Login com sucesso

    Dado que eu acesse a página de login
    Quando eu informar o username "<user>" e a senha "<senha>"
    Então verifico a mensagem "<msg>" de sucesso


    Exemplos:
    |user        |senha          |msg  |
    |diniz       |9kxy5XmNy@uzrJP|diniz|
