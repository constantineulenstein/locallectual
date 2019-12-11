class ConversationsController < ApplicationController
  before_action :find_convo, only: [:show, :reply]

  def index
    @conversations = current_user.mailbox.conversations.order(updated_at: :desc)
    skip_policy_scope
  end

  def show
    authorize current_user
    @transaction = Transaction.new



    @conversation.participants.each do |participant|
      if current_user.id == participant.id
        @logged_in_chatter = participant
      else
        @other_chatter = participant
      end
    end

    @transactions = current_user.transactions
    @transactions.each do |transaction|
      if current_user.transactions.include?(transaction) && @other_chatter.transactions.include?(transaction)
        @transaction = transaction
      end
    end

    # need to find existing transaction between 2 user to update the record
    # @transaction = @transaction.geocode
    @markers = [
      {
        lat: @transaction.latitude,
        lng: @transaction.longitude
      }
    ]


    # marks conversation as read when user opens convo
    inbox = @conversation.receipts.where(mailbox_type: "inbox", receiver_id: @logged_in_chatter)
    inbox.mark_as_read
  end

  def reply
    current_user.reply_to_conversation(@conversation, params[:send_message])
    if @conversation.receipts[-2].mailbox_type == "inbox"
      @conversation.receipts[-2].mark_as_unread
      @conversation.receipts[-1].mark_as_read
    end

    if @conversation.receipts[-1].mailbox_type == "inbox"
      @conversation.receipts[-2].mark_as_read
      @conversation.receipts[-1].mark_as_unread
    end
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
