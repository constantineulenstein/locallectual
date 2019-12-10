class ConversationsController < ApplicationController
  before_action :find_convo, only: [:show, :reply]
  before_action :count_new_messages

  def index
    @conversations = current_user.mailbox.conversations
    @messages = policy_scope(User)
  end

  def show
    authorize current_user
    @transaction = Transaction.new

    # need to find existing transaction between 2 user to update the record
    @transactions = current_user.transactions
    @transactions = Transaction.geocoded
    @markers = @transactions.map do |t|
      {
        lat: t.latitude,
        lng: t.longitude
      }
    end

    @conversation.participants.each do |participant|
      if current_user.id == participant.id
        @logged_in_chatter = participant
      else
        @other_chatter = participant
      end
    end

    # marks conversation as read when user opens convo
    inbox = @conversation.receipts.where(mailbox_type: "inbox", receiver_id: @logged_in_chatter)
    inbox.mark_as_read
  end

  def reply
    current_user.reply_to_conversation(@conversation, params[:send_message])
    @conversation.receipts[-2].mark_as_unread
    @conversation.receipts[-1].mark_as_unread
    authorize current_user
    redirect_to conversation_path(@conversation)
  end

  private

  def count_new_messages
    # counts number of unopened messages inside message_count variable
    @message_count = 0
    unread_messages = []
    current_user.mailbox.receipts.each do |message|
      unread_messages << message if message.is_read == false && message.mailbox_type == "inbox"
    end
    unread_messages.each { @message_count += 1 }
  end

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
