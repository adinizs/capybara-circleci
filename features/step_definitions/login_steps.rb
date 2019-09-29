Dado("que eu acesse a página de login") do
    visit '/identify'
end
  
Quando("eu informar um CPF {string} e a senha {string}") do |cpf, senha|
    @login = LoginPage.new
    @login.realiza_login(cpf, senha)
end
  
  
Então("verifico a mensagem {string} de sucesso") do |msg|
    @account_msg = AccountPage.new
    expect(@account_msg.msg_ola).to have_content msg
end

Então("verifico a mensagem {string} de senha inválida") do |pw_invalid|
    @pw_error = LoginPage.new
    expect(@pw_error.msg_pw_invalid).to have_content pw_invalid
end