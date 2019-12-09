class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.friendrequest.subject
  #
  def friendrequest
    @user = params[:user] # Instance variable => available in view
    @sender = params[:sender]
    mail(to: @user.email, subject: "You've got a new friend request")
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.transaction.subject
  #
  def transaction
    @user = params[:user] # Instance variable => available in view
    @sender = params[:sender]
    @transaction = params[:transaction]
    @conversation = params[:conv]
    mail(to: @user.email, subject: "Someone wants to meet you")
  end
end
