Quando("eu informar um CPF sem cadastro") do
    @cpf_value = LoginPage.new 
    @cpf_value.new_cpf
  end
  
Então("realizo um novo cadastro com sucesso") do
    @register = RegisterPage.new
    @register.new_account
end

Então("visualizo a mensagem de boas vindas") do
    @hello_msg = AccountPage.new
    expect(@hello_msg.msg_ola).to have_content "Olá,"
end
  