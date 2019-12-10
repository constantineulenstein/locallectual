class TransactionsController < ApplicationController

  def index
    @transactions = current_user.transactions
  end


  def create
    find_convo
    # check if a transaction already exists
    partic = @conversation.participants
    @transaction = Transaction.where("(locallect_id = ? AND explorer_id = ?) OR (locallect_id = ? AND explorer_id = ?)",partic[0].id,partic[1].id,partic[1].id,partic[0].id)[0]
    if @transaction.nil?
      @transaction = Transaction.create(transaction_params)
    else
    @transaction.update(transaction_params)
    end

    @transaction.explorer_id = current_user.id
    @conversation.participants.each do |participant|
      if participant != current_user
        @transaction.locallect_id = participant.id
      end
    end
    @transaction.approved = false
    @transaction.declined = false
    @transaction.save

    flash[:alert] = "Meet up request has been sent!"

    # send email
    mail = UserMailer.with(user: User.find(Locallect.find(@transaction.locallect_id).user_id), sender: current_user, transaction: @transaction, conv: @conversation).transaction
    mail.deliver_now

    authorize @transaction
    redirect_to conversation_path(@conversation)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def approve
    @transaction = Transaction.find(params[:transaction_id])
    @transaction.approved = true
    @transaction.save
    flash[:alert] = "Meet up request has been approved!"
    authorize @transaction
    redirect_to conversation_path(params[:conversation_id])
  end

  def reject
    @transaction = Transaction.find(params[:transaction_id])
    @transaction.declined = true
    @transaction.save
    flash[:alert] = "Meet up request has been rejected!"
    authorize @transaction
    redirect_to conversation_path(params[:conversation_id])
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
