class LocallectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :find_user, only: [:show]

  def index
    @locallects = policy_scope(User).search_by_base_location(params[:search][:query]).order(created_at: :desc)
  end

  def show
    authorize @locallect
    @friendship = Friendship.new
  end

  def edit
    @locallect = User.find(current_user.id)
    authorize @locallect
  end

  private

  def find_user
    @locallect = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :gender, :base_location, :arrival_date, :job, :birth_location, :mother_tongue)
  end
end
