class LocallectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
  end

  def show

  end

  def edit
  end

  def update
  end

  def new
    @locallect = Locallect.new
    @explorer = Explorer.new
  end

  def create
  end
end
