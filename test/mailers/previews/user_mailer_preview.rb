# Preview all emails at http://<hex string>.vfs.cloud9.us-east-2.amazonaws.comocalhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at 
  # https://f0c1b899442144928771bc3c9a4e4386.vfs.cloud9.us-east-2.amazonaws.com/rails/mailers/user_mailer/account_activation
  def account_activation
    user = User.first
    user.activation_token = User.new_token
    UserMailer.account_activation(user)
  end

  # Preview this email at 
  # https://f0c1b899442144928771bc3c9a4e4386.vfs.cloud9.us-east-2.amazonaws.com/rails/mailers/user_mailer/password_reset
  def password_reset
    user = User.first
    user.reset_token = User.new_token
    UserMailer.password_reset(user)


end
