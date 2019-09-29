#language: pt
   
   Funcionalidade: Login
   
    @senha_invalida
    Esquema do Cenário: Login com senha inválida

    Dado que eu acesse a página de login
    Quando eu informar um CPF "<cpf>" e a senha "<senha>"
    Então verifico a mensagem "<msg>" de senha inválida

    Exemplos:
    |cpf        |senha    |msg                              |
    |37474584832|123456   |Senha incorreta. Tente novamente.|



    @login
    Esquema do Cenário: Login com sucesso

    Dado que eu acesse a página de login
    Quando eu informar um CPF "<cpf>" e a senha "<senha>"
    Então verifico a mensagem "<msg>" de sucesso


    Exemplos:
    |cpf        |senha    |msg          |
    |37474584832|ads270190|Olá, Anderson|
