class LocallectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :find_user, only: [:show]

  def index
    if params[:search].present?
      @locallects = policy_scope(User).search_by_base_location(params[:search][:query]).order(created_at: :desc)
    end
    if params[:base_location].present?
      @locallects = policy_scope(User).search_by_base_location(params[:base_location]).order(created_at: :desc)
      @locallects = @locallects.where(age: params[:age]) if params[:age] != '' && params[:age].present?
      @locallects = @locallects.where(gender: params[:gender]) if params[:gender] != '' && params[:gender].present? && params[:gender] != 'All'

      #   params["search"]
      #   @filter = params["search"]["flavors"].concat(params["search"]["strengths"]).flatten.reject(&:blank?)
      #   @locallects = @filter.empty? ? User.all : User.all.tagged_with(@filter, any: true)
      # else
      #   @locallects = User.all
    end
    # raise

  end

  # def filter

  #   @locallects = @locallects.where(age: params[:age]) if params[:age] != '' && params[:age].present?
  #   puts "Filter 1....#{@locallects.map{|x| "#{x.id} - #{x.age} - #{x.gender} - #{x.base_location}"}}"
  #   @locallects = @locallects.where(gender: params[:gender]) if params[:gender] != '' && params[:gender].present? && params[:gender] != 'All'
  #   puts "Filter 2....#{@locallects.map{|x| "#{x.id} - #{x.age} - #{x.gender} - #{x.base_location}"}}"

  # end

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
