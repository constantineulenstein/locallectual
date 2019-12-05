class ConversationsController < ApplicationController
  before_action :find_convo, only: [:show, :reply]

  def index
    @messages = policy_scope(Message)
  end

  def show
    authorize current_user
  end

  def reply
    current_user.reply_to_conversation(@conversation, params[:send_message])
    authorize current_user
    redirect_to conversation_path(@conversation)
  end

  private

  def find_convo
    current_user.mailbox.conversations.each do |conversation|
      if conversation.id == params[:id].to_i
        @conversation = conversation
      end
    end
  end

  def find_user
    @locallect = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :gender, :base_location, :years_in_city, :job, :explorer_location)
  end
end