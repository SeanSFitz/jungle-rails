class UserMailer < ApplicationMailer

    def order_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Thank you for your order!')
  end

end
