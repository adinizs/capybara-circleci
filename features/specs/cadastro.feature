#language: pt

Funcionalidade: Cadastrar novo cliente
    @cadastro
    Cenário: Realizar cadastro

    Dado que eu acesse a página de login
    Quando eu informar um CPF sem cadastro
    Então realizo um novo cadastro com sucesso
    E visualizo a mensagem de boas vindas