#language: pt

Funcionalidade: Buscar filmes
    @search
    Cenário: Buscar filme

    Dado que eu acesse a página de login
    Quando eu informar o username e a senha
    E pesquisar o filme "Avengers: Endgame"
    Então o resultado da busca deve ser exibido corretamente