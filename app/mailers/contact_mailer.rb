class ContactMailer < ApplicationMailer
    def say_hello_to(user)
        @user = user
        mail to:"ryowu0329@gmail.com", subject:"你好!!"
    end
end
