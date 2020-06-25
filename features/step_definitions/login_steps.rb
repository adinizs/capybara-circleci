# frozen_string_literal: true

Dado('que eu acesse a página de login') do
  visit '/login'
  @login = LoginPage.new
  @login.acessa_pag_login
end

Quando('eu informar o username {string} e a senha {string}') do |user, senha|
  @login = LoginPage.new
  @login.realiza_login(user, senha)
end

Quando('eu informar o username e a senha') do
  @login = LoginPage.new
  user = 'diniz'
  senha = '9kxy5XmNy@uzrJP'
  @login.realiza_login(user, senha)
end

Então('verifico a mensagem {string} de sucesso') do |msg|
  @home = HomePage.new
  expect(@home.msg_ola).to have_content msg
end

Então('verifico a mensagem {string} de senha inválida') do |pw_invalid|
  @pw_error = LoginPage.new
  expect(@pw_error.msg_pw_invalid).to have_content pw_invalid
end
