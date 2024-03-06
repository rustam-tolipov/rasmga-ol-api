class UserMailer < ApplicationMailer
  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  def forgot_password(email)
    @user = User.find_by(email: email)
    @token = @user.reset_password_token
    mail(to: email, subject: 'Reset your password')
  end
end
