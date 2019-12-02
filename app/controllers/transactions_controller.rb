class TransactionsController < ApplicationController

  def index
    @transactions = current_user.transactions
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
