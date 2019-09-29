class RegisterPage < SitePrism::Page

    element :name, '[name="name"]'
    element :last_name, '[name="lastname"]'
    elements :email, '[name="email"]'
    element :birthday, '[name="birthdate"]'
    element :phone, '[name="phone"]'
    element :password , '[name="password"]'
    element :passwordConfirmation, '[name="passwordConfirmation"]'
    element :btn_register, '.app__form__actions'

    def new_account
        wait_until_name_visible
        fname = Faker::Name.first_name
        flast_name = Faker::Name.last_name
        femail = Faker::Internet.email
        name.set fname
        last_name.set flast_name
        email[0].set femail
        birthday.set("10/10/1990")
        phone.set("1199998888")
        password.set("senha123456")
        passwordConfirmation.set("senha123456")
        btn_register.click
    end
    
end