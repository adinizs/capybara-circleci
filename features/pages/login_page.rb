class LoginPage < SitePrism::Page

    
    element :cpf_or_email, '[name=emailOrCpf]'
    element :btn_enviar, '.btn-cta'
    element :pwd, '[name="password"]'
    element :btn_register, 'a[href="/register"]'
    element :msg_pw_invalid, '.app__alert__content'

    def realiza_login(cpf, senha)
        cpf_or_email.set(cpf)
        btn_enviar.click
        wait_until_pwd_visible
        pwd.set(senha)
        btn_enviar.click
    end

    def new_cpf
        fcpf = Faker::CPF.numeric
        cpf_or_email.set fcpf
        btn_enviar.click
        wait_until_btn_register_visible
        btn_register.click
    end
end

