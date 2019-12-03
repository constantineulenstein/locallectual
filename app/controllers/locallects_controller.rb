class LocallectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :find_user, only: [:show, :update]

  def index
    @locallects = policy_scope(User).search_by_base_location(params[:search][:query]).order(created_at: :desc)
  end

  def show
    authorize @locallect
  end

  def edit
    @locallect = User.find(current_user.id)
    authorize @locallect
  end

  def update
    @locallect.update(user_params)
    redirect_to locallect_path(@user)
  end

  def new
    @locallect = Locallect.new
    @explorer = Explorer.new
  end

  def create
  end

  private

  def find_user
    @locallect = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :gender, :base_location, :years_in_city, :job, :explorer_location)
  end
end
