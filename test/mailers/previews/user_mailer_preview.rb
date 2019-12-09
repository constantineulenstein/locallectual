# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/friendrequest
  def friendrequest
    UserMailer.friendrequest
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/transaction
  def transaction
    UserMailer.transaction
  end

end
