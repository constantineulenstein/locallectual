class TransactionsController < ApplicationController

  def index
    @transactions = current_user.transactions
  end

  def show
  end


  def create
    find_convo
    @transaction = Transaction.create(transaction_params)
    @transaction.explorer_id = current_user.id
    @conversation.participants.each do |participant|
      if participant != current_user
        @transaction.locallect_id = participant.id
      end
    end
    @transaction.save
    authorize @transaction
    redirect_to conversation_path(@conversation)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def transaction_params
    params.require(:transaction).permit(:date, :location)
  end

  def find_convo
    current_user.mailbox.conversations.each do |conversation|
      if conversation.id == params[:conversation_id].to_i
        @conversation = conversation
      end
    end
  end

end
