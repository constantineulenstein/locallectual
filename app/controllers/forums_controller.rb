class ForumsController < ApplicationController
skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @forums = policy_scope(Forum).all
    search = params[:search]
    if search.present?
      if search[:content].present?
        @forums = @forums.search_by_all(search[:content])
      end
      if search[:location].present?
        @forums = @forums.search_by_location(search[:location].split(", ").first)
      end
      if search[:language_list] != [""]
        @forums = @forums.tagged_with(search[:language_list], any: true)
      end
    else
      @forums = policy_scope(Forum).all
    end
    @forums = @forums.order(created_at: :desc)
    # For new post
    @forum = Forum.new
  end

  def show
    @forum = Forum.find(params[:id])
    @comment = Comment.new
    authorize @forum
  end

  def create
    @forum = Forum.new
    if policy(@forum).create?
      @forum = Forum.create(forum_params)
      @forum.user_id = current_user.id
      @forum.save
      redirect_to forums_path
      authorize @forum
    else
      skip_authorization
      redirect_to edit_user_registration_path
      flash[:alert] = "You need to add a picture and your birthday to do this!"
    end
  end


  def destroy
    @forum = Forum.find(params[:id])
    @forum.destroy
    redirect_to forums_path
    authorize @forum
  end

  private

  def forum_params
    params.require(:forum).permit(:title, :description, :location, :language_list)
  end
end
