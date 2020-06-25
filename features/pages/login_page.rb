# frozen_string_literal: true

class LoginPage < SitePrism::Page
  element :user_field, '#username'
  element :pwd, '[name="password"]'
  element :btn_register, 'a[href="/register"]'
  element :msg_pw_invalid, '.app__alert__content'
  element :login_page, '[href="/login"]'
  element :btn_entrar, '[value="Login"]'

  def acessa_pag_login
    login_page.click
  end

  def realiza_login(user, senha)
    user_field.set(user)
    pwd.set(senha)
    btn_entrar.click
  end
end
